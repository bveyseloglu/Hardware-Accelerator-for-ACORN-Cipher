# Hardware-Architecture-for-ACORN-Cipher
An accelerator for lightweight cipher algorithm that was made for embedded systems to meet low system requirements. This algorithm is developed by Hongjun Wu. You can get more information from here:
https://www3.ntu.edu.sg/home/wuhj/research/caesar/caesar.html \
https://cryptography.gmu.edu/athena/index.php?id=CAESAR_source_codes

## Development Environment
The development environment that used by me in this project is Vivado Design Suite 2014.4 and the hardware description language is VHDL. The ARM processor of the ZedBoard was programmed by using C Language. 

## Important Notice
The hardware architecture is on development and it's not ready to use.

## The aut

# About the Project
## 1.	Introduction
The Internet of Things (IoT) has become a ubiquitous term to describe the tens of billions of devices that have sensing or actuation capabilities, and are connected to each other via the Internet. The IoT includes everything from wearable fitness bands and smart home appliances to factory control devices, medical devices and even automobiles. Security has not been a high priority for these devices until now [1].

There has been a lot of discussion regarding the hacking of devices and systems to obtain information and data. However, just as critical are cyber-attacks against the devices themselves - attacks which take over control of the device and cause them to operate in dangerous and insecure ways.

Still, the deployed protective mechanisms must comply with the constrained resources of the target embedded systems. Lightweight cryptography focuses on cryptographic mechanisms suitable for such systems. Lightweight block and stream ciphers are expected to perform well in embedded devices and mainly provide confidentiality and data integrity. Block ciphers are the most common choice in lightweight cryptography as their design is often more straightforward and their security properties are well‐studied.

In recent years, stream ciphers have gained ground as several research efforts have investigated secure stream cipher designs [3]. 

In this project, accelerating a lightweight authenticated cipher, ACORN-128, is intended to be accelerated by designing a proper hardware/software co-design.

## 2.	The Importance of Cryptography
Cryptography deals with a set of methods which enable us to store and transmit information while safeguarding it from intruders. That is, we can use cryptography methods to keep information private (say documents, passwords, etc.), and to communicate in a way such that only the intended recipient can read the message [4].

Cryptography has had many applications over thousands of years of history. The most common applications of cryptography are summarized below.
* **Secure communications.** The most obvious use of cryptography is encrypting communications between the edges of the communication network. This is most commonly used for communicating between a client program and a server.
* **Storing Data.** Any data is valuable to at least the person who generated it. Every operating system uses encryption in some of the core components to keep passwords secret, conceal some parts of the system, and make sure that updates and patches are really from the maker of the system [5].
* **Government and Military Security.** The oldest application of cryptography is the protection of military secrets. One of the oldest known ciphers is the Caesar Cipher, attributed to Julius Caesar and was used to send confidential information to his commanders and soldiers in the field [4]. Since then, the use of cryptography in government and the military has only increased to protect information that is sensitive for many reasons.

## 3. Features of ACORN
ACORN-128 is a lightweight authenticated chipher algorithm that designed by a mathematical sciences researcher, Hongjun Wu. The main main features of this cipher architecture is summarized below.

* **Unique design.** ACORN designed as a bit-based sequential authenticated cipher in which the difference is injected into the state for authentication for better performance. It is the first time that this type of authenticated cipher is designed based on bit-based sequential stream cipher. The challenge in this design approach is to achieve high authentication security, and Wu solved this problem by using six concatenated linear feedback shift registers to ensure that it is expensive to eliminate the difference in the state, and it is easy to analyze the authentication security [6].
* **Hardware efficiency.** The hardware cost is less than the competitor cipher algorithms [6] except TRIVIUM [7]. And also, one message bit is processed at each step. That enables the hardware implementation can be reasonably simple.
* **Parallelism.** In ACORN-128, 32 steps can be computed in parallel manner, which allows the speed of the software or hardware implementation is reasonably fast.

## 4. Acceleration Strategy
There is so many way to accelerate a program by designing a proper hardware/software co-design just like unlimited possibilities of writing it. In this chapter, the overall acceleration strategy of the ACORN128 lightweight authenticated cipher is explained.

### 4.1 Amdahl’s Law
In computer architecture, Amdahl's law is a formula which gives the theoretical speedup in latency of the execution of a task at fixed workload that can be expected of a system whose resources are improved [8]. Amdahl's law can be formulated as

<p align="center">S(s)=  1/((1-p)+p/s)</p>

where S is the theoretical speedup of the execution of the whole task, s is the speedup of the part of the task that benefits from improved system resources, p is the proportion (fraction) of execution time that the part benefiting from improved resources originally occupied.

In a perspective of this law, accelerating the most time taking functions of the algorithm should be our first priority. Also, improving the functions that takes relatively less time compared to the others may not accelerate the whole algoritm significantly. We can easily see the most time consuming parts of the algorithm in Figure 4. If we try to accelerate the “enc_onebyte” and “dec_onebyte” functions, we can achieve faster implementation of the algorithm in a reasonable amount of effort.


### 4.2. The Functions That Aimed to be Accelerated
In this project, the functions of the ACORN128 lightweight authenticated cipher, which are
* Majority,
* Choose, 
* Generate the Keystream Bit,
* Compute the Feedback Bit,
* The state update function,
* The one byte encryption function

were aimed to be accelerated because of the time consuming behaivour of those functions. Also, the one byte decryption function is also aimed to be accelerated.

The other functions of the program are not going to be accelerated because of the portion p of those functions are very low, hence the possible speed up S is also very low as explained at Chapter 4.1. 

## 5. The Design
### 5.1. The Block Design
The block design of the harware/software co-design that accelerates ACORN128 lightweight authenticated cipher is shown in following figure.

The system is mainly consisting from 6 IP cores, 4 from the default Xilinx’s IP library and 2 of them were designed by us. The fuctionality of each block are briefly described below.

* **ZYNQ7 Processing System.** The Processing System IP is the software interface around the Zynq-7000 Processing System [10].
* **AXI Interconnect.** Connects one or more AXI memory-mapped Master devices to one or more memory-mapped Slave devices. The AXI interfaces conform to the AMBA AXI version 4 specs from ARM [11].
* **Processor System Reset.** Generates asynchronous external reset input that synchronized with clock. Also, this IP recognizes various types of reset inputs.
* **AXI GPIO.** The AXI GPIO provides a general purpose input/output interface to the AXI interface. This 32-bit soft IP core is designed to interface with the AXI4-Lite interface [12]. In this project, this IP is placed to communicate with the LED of the ZedBoard but, after proceeding to the further design steps, it became unneccesary.
* **acorn128_enc_onebyte.** This IP does the computation job required for the “The one byte encryption function” that described at the Chapter 5.3. It encrypts one bit of the input message. The input/output specifications of this hardware is given in the table.

|    PORT NAME   | LENGHT (BYTES) | DATA TYPE     | INTERFACE | DESCRIPTION                                |
|:--------------:|:--------------:|---------------|-----------|--------------------------------------------|
| state          | 239            | Unsigned Char | s_axilite | The state array                            |
| plaintextbyte  | 1              | Unsigned Char | s_axilite | Holds the byte that wanted to be encrypted |
| ciphertextbyte | 1              | Unsigned Char | s_axilite | Encrypted byte as output                   |
| ksbyte         | 1              | Unsigned Char | s_axilite | The keystream bit                          |
| cabyte         | 1              | Unsigned Char | s_axilite | The control bit                            |
| cbbyte         | 1              | Unsigned Char | s_axilite | The second control bit                     |

