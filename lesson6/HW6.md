# OSI/ISO Table #
| Layer         | Protocol example                  | Unit          | 
| ------------- | --------------------------------- | ------------- |
| Application   | HTTP, SMTP, IMAP, SNMP, POP3, FTP | Data          |
| Presentation  | ASCII. MPEG, JPEG                 | Data          |
| Session       | RPC, PAP, L2TP                    | Data          |
| Transport     | TCP, UDP                          | Datagram      |
| Network       | IPv4, IPv6, ICMP, IPSec           | Packet        |
| Data link     | PPP, Ethernet, DSL                | Frame         |
| Physical      | USB, RJ**                         | Bit           |

# Differences between TCP and UDP protocols #
| TCP |	UDP |
| --- | --- |
| A connection-oriented protocol. |	A connectionless protocol. |
| Uses specific handshake protocols (generally, SYN, SYN-ACK, ACK).	| No handshake. |
| Guarantees the delivery of data to the destination router, thus making it reliable. |	Doesn’t guarantee the delivery of data to the destination. |
| Treats communication stream as a sequence of bytes. |	Messages contain packets that are considered independent of one another. |
| Messages make their way across the internet from one computer to another.	| UDP isn’t connection-based, so one program can send lots of packets to another. |
| Packet sequence is verified.	| Data is processed in order of arrival. |
| Slower speed of transmission due to reordering and retransmission.	| Faster because integrity is checked at the arrival time using checksum. |
| Performs error checking and attempts error recovery.	| Performs basic error checking and discards erroneous packets without attempting error recovery. |
| Offers extensive error-checking mechanisms using flow control and acknowledgment of data. |	Has only a single error-checking mechanism, which is used for checksums. |
| Acknowledges segments.	| Doesn’t acknowledge specific segments. |
| Header size is 20 bytes.	| Header size is 8 bytes. |
| TCP is heavy. It needs three packets to set up a socket connection before data can be sent. |	UDP is lightweight. There is no tracking of connections, ordering of messages, etc. |
