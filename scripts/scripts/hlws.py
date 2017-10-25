import os

Cmd = "herbstclient tag_status"
Wstr = ""
Output = str(os.popen(Cmd).read())
Index = Output.find("9")
i = 0

while i < Index:
    if Output[i] == ":":
        Wstr = Wstr + "  -"         #occupied
        i = i + 1
    elif Output[i] == ".":
        Wstr = Wstr + "  ·"         #unoccupied
        i = i + 1
    elif Output[i] == "#":
        Wstr = Wstr + "  ×"         #current
        i = i + 1
    else:
        i = i + 1
print(Wstr[1:])
