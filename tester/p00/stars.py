x = 5
for i in range(1,x+1):
	for j in range(x-i):
		print(" ",end="")
	for j in range(i):
		print("*", end="")
	print()