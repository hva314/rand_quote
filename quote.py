#!/usr/bin/python3

import sys
import os
from termcolor import colored
import random

strFile = "/home/hva314/Documents/Project/random_quote/quotes.txt"
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
            '''
            temp = line.split(":")
            strName = temp[0]
            strQuote = temp[1]
            
            text1 = colored(strName,'red')
            text2 = strQuote

            print(text1+":"+text2)
            '''
            break
