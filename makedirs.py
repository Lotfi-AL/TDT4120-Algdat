import os
list = []


with open("kap.txt") as file:
    for line in file:
        line = line.strip("\n")
        line = line.replace(" ", "")
        line = line.replace(":", ".")
        line = line.replace("=>", "-")
        list.append(line)
    print("ferdig")

ogpath = os.getcwd()

for line in list:
    path = ogpath + "/"+line
    try:
        os.mkdir(path)
    except OSError:
        print("FAILED of the directory %s " % path)
    else:
        print("Successfully created the directory %s " % path)
