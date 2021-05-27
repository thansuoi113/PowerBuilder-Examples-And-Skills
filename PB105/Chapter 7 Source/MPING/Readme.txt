************************************************** **********
*Ping multiple computer applications in LAN (Windows NT & Windows 9X)*
************************************************** **********

This is an application written entirely in PB, including Ping.exe. Because the PB data type is inconsistent with the data type in the Windows system, the Ping.exe file is independently encapsulated and called in the Mping.exe file. This program can Detect the allocation of IP addresses of the entire local network, and of course, you can also detect whether a separate computer is connected to the machine on the physical connection.

Precautions:

     The first three addresses of Start IP Address and End IP Address should be the same.
     For example: Start IP Address=A.B.C.0, then End IP Address=A.B.C.254 (255 window reserved internally,
Cannot use ), that is, A, B, and C must be consistent.

The source code is in Mping.pbl, users can expand their own network functions as needed, such as "port scanning", comparative analysis of scanning results, etc.

I hope everyone can gain something.