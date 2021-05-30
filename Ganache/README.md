# Ganache CLI setup

## Host / port
1. ganache-cli -h 127.0.0.1 -p 8000

2. ganache-cli istanbul -i 700 -g 20000000 -l 0x45UI -b 15 -t "2019-02-15T15:53:00+00:00"
- the -g flag is for gas price
- transaction gas limit !== block gas limit
- the -b flag is for block time
- the -t is for time - reference ISO_8601 format

3. ganache-cli -a 1000 -e 1000 
- the -a flag for automatically
- the -e flag is for ether
- the -d flag is for same address
- the -m flag is for metamask
- --account="account-key, how much ether"

4. ganache-cli --db /path/directory/
- use existing db

5. ganache-cli -v 
- the -v flag is for verbose 

6. Forking feature: fork the existing mainnet 
- create infura account
- create new project
- view project
- get end point url
- select mainnet
- copy url
- go to ethexplorer and search dai
- make sure this is an EOA, not smart contract
- in terminal: ganache-cli -f type-mainnet-url -u paste-dai-address