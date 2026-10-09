# Level 14 -> 15

## Aim: 
to find a password which can be retrieved by submitting the password of the current level to port 30000 on localhost

##  My approach: 
 - `ls` shows no relevant data
 - manpaging all the suggested commands: `openssl`,`s_client`,`nc`,`nmap`
 - `nc` can be used to connect to TCP or UDP ports, listen for incoming connections, transfer files, test services, and send raw requests
 - reading about localhost -> it has IP 127.0.0.1
 - using `nc 127.0.0.1 30000` and submitting the password for the current level -> the server responds with another password

## Solution: 
```bash
nc 127.0.0.1 30000
```

## Learning points: 
-   localhost always means the machine the command is run on, so service listening on localhost has to be reached from the server itself
-   the localhost address points to 127.0.0.1 (in IPv6 it's `::1`)  
-   `nc <host> <port>` connects to a port and enables sending text to the service and read its reply
-   `nc` sends data as plain text without encryption, safe here because the connection stays on localhost but over a real network it's dangerous (anyone on the path can read it)
