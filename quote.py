#!/usr/bin/python3

import os
import random

strFile = ".quotes"
f = os.popen("wc -l "+strFile)
intLine = int((str(f.read()).split())[0])
rand_line = random.randrange(0, intLine)

with open(strFile) as r:
    iCountLine = 0
    for line in r:
        if not (iCountLine == rand_line):
            iCountLine += 1
        else:
            print(line)
            break
