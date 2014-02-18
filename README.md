fam3.script
===========

FA-M3 Communication tools  

1. Read Device
---------------

**(SYNOPSIS)**


```
$ fam3read.sh  IP-Address  DeviceName  [Num]
```  

**(Argument)**

-   IP-Address: FA-M3 IP-Address or HostName
-   DeviceName: Word Device Name
-   Num: Number of Devices  

**(Example)**


```
$ ./fam3read.sh 192.168.0.57 D1

9999 
```  

```
$ ./fam3read.sh 192.168.0.57 d1 10

99 2 3 4 5 6 7 8 9 10 
```  

2. Write Device
----------------

**(SYNOPSIS)**

```
$ fam3write.sh  IP-Address  DeviceName  Value
```  

**(Argument)**

-   IP-Address: FA-M3 IP-Address or HostName
-   DeviceName: Word Device Name
-   Value: New Device Value  


**(Example)**

```
$ ./fam3read.sh 192.168.0.57  D1
1234 

$ ./fam3write.sh 192.168.0.57 D1 7777

$ ./fam3read.sh 192.168.0.57 D1
7777
```  


3. Update Device
-----------------

**(SYNOPSIS)**

```
$ fam3add.sh  IP-Address  DeviceName  AddtionValue
```  

**(Argument)**

-   IP-Address: FA-M3 IP-Address or HostName
-   DeviceName: Word Device Name
-   Value: Addtion Value  


**(Example)**

```
$ ./fam3read.sh 192.168.0.57  D1
7777 

$ ./fam3add.sh 192.168.0.57 D1 1

$ ./fam3read.sh 192.168.0.57  D1
7778 

$ ./fam3add.sh 192.168.0.57 D1 -10

$ ./fam3read.sh 192.168.0.57  D1
7768
```  

4. Function
------------

**(Example)**

```
$ . ./fam3lib.sh

$ fam3_read 192.168.0.57 d1

$ fam3_write 192.168.0.57 d1 999

$ fam3_add 192.168.0.57 d1 98
```

