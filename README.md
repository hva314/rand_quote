# rand_quote

Sourcecode of query.sh is from Eduardo San Martin Morote aka [Posva](http://posva.github.io) 
Quotes are from http://www.quotationspage.com/random.php3

###Prereq:
```
sudo apt install locat cowsay
```

###Installation
'''
git clone https://github.com/hva314/rand_quote
'''
put this line at the end of your .bashrc or configure file of current shell you are using
'''
/path/to/quote.py | cowsay | locat
'''
in case you want to download more quote, run:
'''
query.sh
'''
![Screenshot](/screenshot.png?raw=true "Screenshot")
