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
-   localhost is used to access network services that are running on the host via the loopback network interface
-   netcat (nc) can open TCP connections, send UDP packets, listen on TCP/UDP ports, and do port scanning. It operates on both IPv4 and IPv6 addresses 
