import os
cmd = "herbstclient tag_status"
wstr = ""
output = str(os.popen(cmd).read())
upto = "9"
index = output.find(upto)
i = 0
while i < index:
    if output[i] == ":":
        #occupied
        wstr = wstr + "  ·"
        i = i + 1
    elif output[i] == ".":
        #unoccupied
        wstr = wstr + "  -"
        i = i + 1
    elif output[i] == "#":
        #current
        wstr = wstr + "  ×"
        i = i + 1
    else:
        i = i + 1
print(wstr)
