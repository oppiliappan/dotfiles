import os

cmd = "herbstclient get_attr clients.focus.title"
out = ""
out = str(os.popen(cmd).read())

if len(out) == 0:
    out = "HI"

print(out)
