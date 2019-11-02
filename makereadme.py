import os
for dirname, dirnames, filenames in os.walk('.'):
    if '.git' in dirnames:
        # don't go into any .git directories.
        dirnames.remove('.git')

    # print path to all subdirectories first.
    for subdirname in dirnames:
        with open(os.path.join(dirname, subdirname)+"/readme.md", "w") as file:
            file.write("hey")
        print(os.path.join(dirname, subdirname))
