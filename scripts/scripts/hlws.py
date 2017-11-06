import os

cmd = "herbstclient tag_status"
wstr = ""
output = str(os.popen(cmd).read())
index = output.find("9")
i = 0

for i in range(index):
	if output[i] == ":":
		wstr += "  -"                      # occupied
	elif output[i] == ".":
		wstr += "  ·"                      # unoccupied
	elif output[i] == "#":
		wstr += "  ×"                      # current

print(wstr[1:])
