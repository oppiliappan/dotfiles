import os
cmd = "herbstclient tag_status"
wstr = ""
output = str(os.popen(cmd).read())
CRED = '\033[91m'
CEND = '\033[0m'
upto = "9"
index = output.find(upto)
i = 0
while i < index:
    if output[i] == ":":
        wstr = wstr + "  ∘"
        i = i + 1
    elif output[i] == ".":
        wstr = wstr + "  ·"
        i = i + 1
    elif output[i] == "#":
        wstr = wstr + "  ∙"
        i = i + 1
    else:
        i = i + 1
print(wstr)
