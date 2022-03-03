import json
import os

path = ""


def getTabs(data):
    tabs = []
    for t in data:
        tabs.append(t)
    return tabs


def choseTab(tabs):
    os.system("clear")
    while True:
        print("[~"+path+"]")

        c = 0
        for tabName in tabs:
            print("("+str(c)+") "+tabName)
            c += 1

        try:
            tabChosen = int(input("[Chose tab]=>"))
            if tabChosen >= c:
                os.system("clear")
                print("[!] Error value is to high!")
            elif tabChosen < 0:
                os.system("clear")
                print("[!] Error value is to low!")
            else:
                return tabs[tabChosen]
        except ValueError:
            os.system("clear")
            print("[!] No input was entered!")


def addOrChoseCategory(data, tabName):
    os.system("clear")
    while True:
        print("[~"+path+"]")

        c = 0
        for name in data[tabName]:
            print("("+str(c)+") "+name["name"])
            c += 1
        print("(99) Add NEW")

        try:
            categoryChosen = int(input("[Add or chose a category]=>"))
            if categoryChosen > c and categoryChosen != 99:
                os.system("clear")
                print("[!] Error value is to high!")
            elif categoryChosen < 0:
                os.system("clear")
                print("[!] Error value is to low!")
            else:
                return categoryChosen
        except ValueError:
            os.system("clear")
            print("[!] No input was entered!")


def addNewCategory(data, tabName):
    os.system("clear")
    categoryName = input("[Enter category name]=>")
    data[tabName].append({
        "name": categoryName,
        "programs": []
    })
    print(data)
    return data


def addTool(data, categoryIndex, tabName):
    os.system("clear")
    print("[~"+path+"]")
    print("[*] Adding new program into "+tabName +
          "/"+data[tabName][categoryIndex]["name"])
    print("[!] Now please be carefoul while typing this. It is very important!")
    id = input("[Input ID]=>")
    name = input("[Input NAME (Default: Same as id)]=>")
    if name == "":
        name = id
    install = input("[Input INSTALLATION]=>")
    description = input("[Add a DESCRIPTION]=>")
    data[tabName][categoryIndex]["programs"].append(
        {
            'id': id,
            'name': name,
            'install': install,
            'description': description,
        })
    return data


def main():
    while True:
        global path
        with open('website/json/data.json') as f:
            data = json.load(f)

            tabs = getTabs(data)
            tabName = choseTab(tabs)
            path = tabName
            categoryIndex = addOrChoseCategory(data, tabName)
            if categoryIndex == 99:
                data = addNewCategory(data, tabName)
                with open('website/json/data.json', 'w') as write:
                    json.dump(data, write)
            else:
                path += "/"+data[tabName][categoryIndex]["name"]
                data = addTool(data, categoryIndex, tabName)
                with open('website/json/data.json', 'w') as write:
                    json.dump(data, write)
                choice = input("[Add one more (y/N)]=>")
                if choice in ["y", "Y"]:
                    continue
                else:
                    break


if __name__ == "__main__":
    main()
