import json
import os

with open('../website/json/data.json') as f:
    json_data = json.load(f)
    output_data = {
        "programs": [],
        "services": [],
        "tools": [],
        "miscs": []
    }
    for tab in json_data:
        old_data = json_data[tab]
        sorted_data = sorted(old_data, key=lambda k: k["name"])
        output_data[tab] = sorted_data

    for tab in json_data:
        c = 0
        for category in output_data[tab]:
            old_data = category["programs"]
            sorted_data = sorted(old_data, key=lambda k: k["name"])  
            output_data[tab][c]["programs"] = sorted_data
            c+=1

with open("../website/json/data.json", "w") as f:
    json.dump(output_data, f)