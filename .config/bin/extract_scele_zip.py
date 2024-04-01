import os, re

TA_CODE = "OKA"

current_project = re.search(r"(Lab||PA) *\d\d", os.getcwd()).group()
current_project_space = current_project

print(current_project_space)

for file in os.listdir():
    if file.endswith(".zip"):
        os.system(f"unzip \"{file}\"")

for file in os.listdir():
    if file.endswith("_assignsubmission_file_"):
        name = re.search(r"[\w -]*(?=-)", file).group()
        name = re.sub(r"[ \-']", "", name)
        npm = re.search(r"\d{10}", file).group()

        for subfile in os.listdir(file):
            if subfile.endswith(".py"):
                os.rename(f"{file}/{subfile}", f"{file}/{TA_CODE}_{name}_{npm}_{current_project}.py")
            elif subfile.endswith(".zip"):
                os.system(f"unzip \"{file}/{subfile}\" -d \"{file}\"")

        os.rename(file, f"{name}_{npm}")
