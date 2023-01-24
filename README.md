# Hunt Scripts

Hunting bash scripts that come in handy when breaking stuff on the internet. Most of the code is rustic, but it works. If there are some mistakes, or there is a better way to do it, I'd be happy to learn.

# What these scripts do?

### caffeine-domain.sh

This script helps to find domains in the scope given a list of IPs. In [Synack Red Team](https://www.synack.com/red-team/), there are host targets where only IPs are given as scope. Therefore, by using the list of IPs and a list of domains, it's easier to see which domains belong to the corresponding IPs and are on scope.

### caffeine-words.sh

Extracts all words from a given file. It's helpful when creating wordlist from BurpSuite history to find parameters from web pages and JS files.

### caffeine-urlscan.sh

Gets URLs from **urlscan** by giving a curl command. This can be done shortly by using an alias. 

### caffeine-vfuzzer.sh

Get input from a **ffuf** output for fuzzing virtual hosts, uses **httpx** to validate it, and provide a readable result in the terminal. 

