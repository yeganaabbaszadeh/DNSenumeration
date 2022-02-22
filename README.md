# DNS Enumeration

DNS enumeration (forward and reverse DNS lookups, zone transfer)

## Forward lookup
```
chmod u+x forwardlookup.sh
./forwardlookup.sh [subdomainlist] [domain]
```
After running the script `result_for_forwardlookup.txt` will be created which stores the list of subdomains that present.

## Reverse lookup
```
chmod u+x reverselookup.sh
./reverselookup.sh [file containing ip addresses] [domain]
```
After running the script `result_for_reverselookup.txt` will be created which stores the list of subdomains that present given an ip address.
