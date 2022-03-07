import json
import os

README = ""
tableOfContents = ""

with open('../website/json/data.json') as f:
    data = json.load(f)

    README += "# linux-reset\n"
    README += "Repository to download important files for a new linux system.\n"

    tableOfContents += "- [linux-reset](#linux-reset)\n"

    for tab in data:
        
        README += "## "+tab.capitalize()+"\n"
        
        tableOfContents += "  - ["+tab.capitalize()+"](#"+tab+")\n"
        
        for category in data[tab]:
            
            README += "### "+category["name"]+"\n"
            README += "| | |\n"
            README += "|-|-|\n"

            tableOfContents += "    - ["+category["name"]+"](#" + category["name"].lower()+")\n"

            for program in category["programs"]:
                README += "|"+program["name"]+"|"+program["description"]+"|\n"
try:
    os.system("touch ../README.md")
except:
    pass

with open("../README.md", "w") as f:
    f.write(tableOfContents+"\n"+README)