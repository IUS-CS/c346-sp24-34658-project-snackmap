# stubs

class VendingMachine:
    # initialize
    def __init__(info, location, status, payment_methods, items):
        info.location = location
        info.status = status
        info.payment_methods = payment_methods
        info.items = items

    def display_info(info):
        # output the information we wish to provide to the user
        # we want users to see the location, status, payment methods, and items
        print("Location:", info.location)
        print("Status:", info.status)
        print("Payment Methods:", info.payment_methods)
        print("Items:")
        for item, price in info.items.items():
            print(f"- {item}: ${price}")



def read(vendingFile):
    # empty array
    vending_machines = []
    # open file to read in vending machine information
    with open('doc/FileInformation/VendingInformation.txt', 'r') as file:
        for line in file:
            if line.strip():
                # separated by a comma, so split the information
                vending_info = line.split(',')
                location = vending_info[2]
                status = vending_info[3]
                # the different methods of payment are separated by a /, split the individual methods
                payment_methods = vending_info[4].split('/')
                items = {}
                for i in range(5, len(vending_info), 2):
                    item = vending_info[i]
                    price = vending_info[i + 1]
                    items[item] = price
                vending_machine = VendingMachine(location, status, payment_methods, items)
                vending_machines.append(vending_machine)
    return vending_machines
