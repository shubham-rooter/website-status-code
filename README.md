# website-status-code
# scscanner_py
scscanner_py is tool to read website status code response from the lists. This tool is reworked from bash version of [scscanner](https://github.com/yuyudhn/scscanner).

## Requirements
- requests
- urllib3
- datetime
- argparse

Tested on **Debian** with **Python 3.10.8**

## Features
- Multi-threading for fast scanning.
- Filter status code from target list.
- Save to file option.

## How to use
Help menu.
```
┌──(shubham㉿Rooter)-[~/dmarcscan]
└─$  python3 scscanner.py --help
nino@nakano:~$ python3 scscanner.py --help

░██████╗██╗░░██╗██╗░░░██╗██████╗░██╗░░██╗░█████╗░███╗░░░███╗  ██████╗░░█████╗░░█████╗░████████╗███████╗██████╗░
██╔════╝██║░░██║██║░░░██║██╔══██╗██║░░██║██╔══██╗████╗░████║  ██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝██╔══██╗
╚█████╗░███████║██║░░░██║██████╦╝███████║███████║██╔████╔██║  ██████╔╝██║░░██║██║░░██║░░░██║░░░█████╗░░██████╔╝
░╚═══██╗██╔══██║██║░░░██║██╔══██╗██╔══██║██╔══██║██║╚██╔╝██║  ██╔══██╗██║░░██║██║░░██║░░░██║░░░██╔══╝░░██╔══██╗
██████╔╝██║░░██║╚██████╔╝██████╦╝██║░░██║██║░░██║██║░╚═╝░██║  ██║░░██║╚█████╔╝╚█████╔╝░░░██║░░░███████╗██║░░██║
╚═════╝░╚═╝░░╚═╝░╚═════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░░░░╚═╝  ╚═╝░░╚═╝░╚════╝░░╚════╝░░░░╚═╝░░░╚══════╝╚═╝░░╚═╝ 
    scscanner - Massive HTTP Status Code Scanner
    
usage: scscanner.py [-h] [-T list.txt] [-w [15]] [-t google.com] [-f 200] [-s] [-o result.txt]

options:
  -h, --help            show this help message and exit
  -T list.txt           File contain lists of domain
  -w [15], --workers [15]
                        Thread value. Default value is 4
  -t google.com, --target google.com
                        Single domain check
  -f 200, --filter 200  Status code filter
  -s, --silent          Silent mode option. Don't print status code output
  -o result.txt, --output result.txt
                        Save the results to file
```
Scan domain lists.
```
python3 scscanner.py -T lists.txt --workers 20
```
Scan single domain.
```
python3 scscanner.py -t https://blog.linuxsec.org
```
Scan domain list with status code filtering.
**Example**: filter only '200' response.
```
python3 scscanner.py -T lists.txt -w 20 -f 200
```
Silent option, just print url with match status code filter.
```
python3 scscanner.py -T lists.txt -s --filter 200 --workers 20
```
With save to file options.
```
python3 scscanner.py -T list.txt --workers 20 --output asuka.txt
```