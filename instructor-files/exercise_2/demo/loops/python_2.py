import os
current_dir = os.getcwd()
for item in os.listdir(current_dir):
    item_path = os.path.join(current_dir, item)
    if os.path.isdir(item_path):
        print(item_path)
