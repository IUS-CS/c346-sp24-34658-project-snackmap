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

All widgets are tested manually with the backend code being tested automatically. Manual testing of the widgets is done by ensuring that the widget is present and behaves correctly when interacted with by the user. 

home_page.dart testing was done by checking that the page builds and there is a button that when pressed plays a video

price_page.dart testing was done by checking that the page builds and that the widgets expand and show data.

update_vending_machine_page.dart testing was done by checking the page builds and that each selection works. 
