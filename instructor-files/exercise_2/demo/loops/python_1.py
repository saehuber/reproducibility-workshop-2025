import os
for item in os.listdir(os.getcwd()):
    item_path = os.path.join(os.getcwd(),item)
    if os.path.isdir(item_path):
        print(item_path)
