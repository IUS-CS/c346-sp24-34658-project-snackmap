import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:gsheets/gsheets.dart';
import 'get_individual_map_data.dart';

Map<int, Map<String, String>> allVendingMap = {};

class FeedbackModel {
  final String location;
  final String status;
  final String paymentMethods;
  final String type;
  final Map<String, String> itemsAndPrices;

  FeedbackModel({
    required this.location,
    required this.status,
    required this.paymentMethods,
    required this.type,
    required this.itemsAndPrices,
  });

  factory FeedbackModel.fromJson(Map<String, dynamic> json) {
    final itemsAndPricesJson = json['Items and Prices'];
    final Map<String, dynamic> itemsAndPrices = Map<String, dynamic>.from(itemsAndPricesJson);
    final Map<String, String> itemPrices = {};
    itemsAndPrices.forEach((key, value) {
      final String price = value.toStringAsFixed(2);
      itemPrices[key] = price;
    });

    return FeedbackModel(
      location: json['Location'],
      status: json['Status'],
      paymentMethods: json['Payment Methods'],
      type: json['Type'],
      itemsAndPrices: itemPrices,
    );
  }
}

Future<void> fetchMonument() async {
  final response = await http.get(Uri.parse('https://script.google.com/macros/s/AKfycbxuq3RWmvOc3Mcpb5id-vIoggDo_BPHJugOtazTjd4mWmJCk27O7bRlv7GpLTs6UgBZ/exec'));

  if (response.statusCode == 200) {
    final List<dynamic> jsonResponse = json.decode(response.body);
    int index = 1;
    for (final data in jsonResponse) {
      final FeedbackModel model = FeedbackModel.fromJson(data);
      
      //Create a Map<String, String> for vendingMapEntry
      final Map<String, String> vendingMapEntry = {
        model.location: model.status,
        model.paymentMethods: model.type,
      };

      model.itemsAndPrices.forEach((key, value) {
        vendingMapEntry[key] = value.toString();
      });

      allVendingMap[index] = vendingMapEntry;
      index++;
    }
  } else {
    throw Exception('Unable to fetch data');
  }
}

class VendingMachineDataSheetApi {
  static const credentials = r'''
{
  "type": "service_account",
  "project_id": "snackmapapi-420518",
  "private_key_id": "8f9c3177cfa72f92e28fbec17da3ab0c65d288c2",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCbwOGFT3YBJLWA\nxq0HuGhfrjd5X83wk7sXYyOiGAYVgjzJAggXwAJ7UJUo7lVz03Jbux3dgSxukTNv\nOESYAQVsgm5u1Qx6rDLaHNVzjNkXFqV4+MFkgMpVBcmIcFEz2Y1XdHtLGI+xP1oL\nRDx1mQEWxvmeTuX/WZk2GzG7HWjnPU9RgfwDXcfqeHBpQOXiw+ojpczY1luqYt+h\np/ePA8OV95EShu/l+JJ5ppg35gTyEBI6lnt9gkfjW5D1goilI7ygrAn6/s+fqv0d\nsjQI4et+ms3jNVYTTqhA+1diqYMMg3X9UgBMZE4EWYbN5DDu9wb9nVgiOEx15cc3\n8jqhBtFDAgMBAAECggEABtt8Hy47bmhBixTnabw0JDPiApI12Y5RIc6q//T5nf+c\nHrSoyvR/ARNJx4HB+cjo2dV0+cHSxSw+M0eRhY7t85p4GdSzD8ExgyoOOV/z77Dl\nW8K5ldIxyYKCt/x+wFinGp81pz3Cl2j7O7aNlUpFb2cW3S7XsEfI/hMLPBP0ZwUN\nBqmVSzgPWfU923Z2rV6yo113JjNKNwV1B0SVUqVcC3UX/CY5RFhqM7zENaIRbyN9\nAk3SiSr9OCFPHkyyTgstgGmoiBbwAU/RKyURKb49rXq49EOd7x2y3h6JQhi2Ccyk\niXE1YMXAubPxKAkaDAzbBWkIX2YRB+ZGtVEDLcwa2QKBgQDIVOJFsLwNZiUtO0yX\n8yDebUdlBVIzv4I4YtT36myQki+qcHqZih6dcsaUNxjHPRR7yDkV7ztRNXIZn94z\nYMUDrcnD7NubUfNBb6p6V0Wl0m5XZgcAi9V4cpdc9Nd3v2R4CEBEYuPGjTbWW7BN\ny3eO3EArwux5CdZlNzVkIy+jTwKBgQDHCNBD2k9zLrDdA98R0JGH/URB/TZc1uiZ\nMsrazYCMmvOntQi3TL5Z8bDfichNVtrjotKBxTiJ13nZUaXpdO3s7FuCUff4ZM0k\nxCL9NfLYg/JmXER6ukXjieoFsZ/+IAHhAitolenwyrTGRho4q+QOeUP1u+/RZvnE\n8mg5PSeFzQKBgBC9708NrxmbkL3P9923Bucv0MijgjQq7BIUSGITqFEIto0S61wL\ni/Vykx/t3tc/xod1uzeXD6kAw3Fax/IZQz3Ed1k1YUEAv0iXsXKZ+osaI/iP4UPt\na8CuKvIs0BkE2LujTOOqNAjy4kNV1E0cFPjOdVpy5tpStSUuUPr2adPHAoGBAKkY\njNBI5l0mWu66/kbFWw8dFmO1+/yuPRkC9SMlmsRaVQ2zmX8ZfVMvKqUQCxPh6b+i\nMpQ7+YfqgEQowPtx8z3ppOk4OKNZCIzm8g8MSZC3sTZTx345SW1CW4eQ3CvsB4yh\n6j1FuGZx4VnebyKcrvm4/wsEK4BNq4AurmuK0Ew1AoGAbC+WhqqfxjBbV6I9yiMk\nX4wvjqACzyz6ZiI/Wk6eAm2aNlHpaj/FZFkBeLLH8QVGHSuWpuxqDFulC/Eqghqr\n7CXrRQ2ilp2qUilnpM8CIiNMGCYfA0beEEOJd714t494VekSdStYbhuvpdyi/ic1\nkS77AEiy94tO7dAAEOzjak4=\n-----END PRIVATE KEY-----\n",
  "client_email": "snackmapapi@snackmapapi-420518.iam.gserviceaccount.com",
  "client_id": "101090252563760708022",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/snackmapapi%40snackmapapi-420518.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}
''';
  static final spreadsheetID = '1Gd7dPjCOlEKYLjj5PXKGyEhxDEaSYLI6I2W43HsjTlA';
  static final gsheets = GSheets(credentials);

  static Worksheet? VendingMachineDataSheet;

//Get data
  static Future init() async{
    await fetchMonument();
    final spreadsheet = await gsheets.spreadsheet(spreadsheetID);
    VendingMachineDataSheet = await getWorkSheet(spreadsheet, title: 'Vending Machine Data');
  }

  static Future<Worksheet> getWorkSheet(
    Spreadsheet spreadsheet, {
      required String title,
    }) async {
      try{
        return await spreadsheet.addWorksheet('Vending Machine Data');
      } catch (e){
        return spreadsheet.worksheetByTitle('Vending Machine Data')!;
      }
    }

  static Future<void> sendAddItem(int vendingNumber, Map<String, double> newItemsandPrices) async {
    await init();
    //Get data for vending number
    String pricesanditems = '';
    List<dynamic> addData = [];

    //Get current data
    Map<String, dynamic>? currentData = GetData().getVendingMachineMap(allVendingMap, vendingNumber);

    List<String> keysToRemove = [];

    for (int i = 0; i < newItemsandPrices.length; i++) {
      String key = newItemsandPrices.keys.elementAt(i);
      if (newItemsandPrices[key] == "Select Price") {
        keysToRemove.add(key);
      }
    }
    //Remove keys
    keysToRemove.forEach((key) {
      newItemsandPrices.remove(key);
    });

    //Add the new data
    for (int i = 0; i < newItemsandPrices.length; i++) {
      if (currentData!.containsKey(newItemsandPrices.keys.elementAt(i))) {
        currentData[newItemsandPrices.keys.elementAt(i)] = newItemsandPrices.values.elementAt(i).toStringAsFixed(2);
        newItemsandPrices.remove(newItemsandPrices.keys.elementAt(i));
      }
    }

    for (int i = 0; i < currentData!.length; i++) {
      if (i > 1) {
        if (newItemsandPrices.length != 0) {
          pricesanditems += "${currentData.keys.elementAt(i)}: ";
          pricesanditems += "${currentData.values.elementAt(i)}, ";
        } else {
          pricesanditems += "${currentData.keys.elementAt(i)}: ${currentData.values.elementAt(i)}";
          if (i != currentData.length - 1) {
            pricesanditems += ", ";
          }
        }
      }
    }

    for (int i = 0; i < newItemsandPrices.length; i++) {
      pricesanditems += "${newItemsandPrices.keys.elementAt(i)}: ${newItemsandPrices.values.elementAt(i).toStringAsFixed(2)}";
      if (i != newItemsandPrices.length - 1) {
        pricesanditems += ", ";
      }
    }

    String location = currentData.keys.elementAt(0);
    String status = currentData[location];
    String paymentMethods = currentData.keys.elementAt(1);
    String type = currentData[paymentMethods];
    addData.add(location);
    addData.add(status);
    addData.add(paymentMethods);
    addData.add(type);
    addData.add(pricesanditems);

    print(addData);
    if (VendingMachineDataSheet != null) {
      VendingMachineDataSheet!.values.insertRow(vendingNumber + 1, addData);
    } else {
      print("VendingMachineDataSheet is null.");
    }
  }

  static Future<void> sendRemoveItem(int vendingNumber, List<String> oldItems) async {
    await init();
    if (VendingMachineDataSheet != null) {
      //Get data for vending number
      String pricesanditems = '';
      List<dynamic> addData = [];

      //Get current data
      Map<String, dynamic>? currentData = GetData().getVendingMachineMap(allVendingMap, vendingNumber);

      if (currentData != null) {
        List<String> itemsToRemove = [];

        // Identify items to remove
        for (int i = 0; i < oldItems.length; i++) {
          if (currentData.containsKey(oldItems[i])) {
            itemsToRemove.add(oldItems[i]);
          }
        }

        // Remove identified items
        itemsToRemove.forEach((item) {
          currentData.remove(item);
        });

        // Construct pricesanditems string
        for (int i = 0; i < currentData.length; i++) {
          if (i > 1) {
            pricesanditems += "${currentData.keys.elementAt(i)}: ${currentData.values.elementAt(i)}";
            if (i != currentData.length - 1) {
              pricesanditems += ", ";
            }
          }
        }

        String location = currentData.keys.elementAt(0);
        String status = currentData[location];
        String paymentMethods = currentData.keys.elementAt(1);
        String type = currentData[paymentMethods];
        addData.add(location);
        addData.add(status);
        addData.add(paymentMethods);
        addData.add(type);
        addData.add(pricesanditems);

        VendingMachineDataSheet!.values.insertRow(vendingNumber + 1, addData);
      } else {
        print("Current data is null.");
      }
    } else {
      print("VendingMachineDataSheet is null.");
    }
  }

  }
