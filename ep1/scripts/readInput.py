import os
import re

def readInput(name):
    with open("./../files/{}.dat.txt".format(name), "r") as f:
        text = f.read()
    text = text.split("\n\n")
    
    upper = text[1].split("\n")
    low = text[2].split("\n")
    sizeLow = text[0].split()[-1]
    sizeUp = text[0].split()[-2]
    os.makedirs(os.path.dirname("./../arrays/{}/up.txt".format(name)), exist_ok=True)
    with open("./../arrays/{}/up.txt".format(name), "w") as f:
        f.write(sizeUp + "\n")
        for i in upper:
            f.write("{}\n".format(i))


    os.makedirs(os.path.dirname("./../arrays/{}/low.txt".format(name)), exist_ok=True)
    with open("./../arrays/{}/low.txt".format(name), "w") as f:
        f.write(sizeLow + "\n")
        for i in low:
            f.write("{}\n".format(i))
if __name__ =="__main__":
    readInput(input("File name: "))