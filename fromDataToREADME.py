import json

with open('website/json/data.json') as f:
    data = json.load(f)
    for tab in data:
        print("## "+tab.capitalize())
        for category in data[tab]:
            print("### "+category["name"])
            print("| | |")
            print("|-|-|")
            for program in category["programs"]:
                print("|"+program["name"]+"|"+program["description"]+"|")