# Testing

All test files can be found in src\fluttersnackmap\test. 
The unit test include both automatic and manuel testing. The manuel testing is only used in cases of the user interface. Flutter has test cases to see if a widget is there but manuel testing is need to ensure all buttons work properly. 

## Created Test

search_by_price_test.dart tests that the priceMap holds the price and locations of all of the items in the vending machines. 

read_file_test.dart tests that the file is found and the allVendingMap gets all of the data from the VendingInformation.txt.

get_individual_map_data_test.dart tests that the individual map data is found from the allVendingMap.

## Test to Create

search_by_location_test.dart tests that the allVendingMap data is sorted by location.

search_by_name_test.dart tests that the allVendingMap data is sorted by item name.

username_test.dart tests that the user can login

We will also continue to do unit test for all methods added to the project. 

## Manuel Testing

All widgets are tested manually and automatically. Manual testing of the widgets is done by ensuring that the widget is present and behaves correctly when interacted with by the user. 

main.dart while it does not have a specific test case if all other files ending in "page_test.dart" pass test then this file works as it is the start of the chain call to start the app. However, this is also manually tested by running the app.

