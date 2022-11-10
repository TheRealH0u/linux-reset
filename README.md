- [linux-reset](#linux-reset)
  - [Programs](#programs)
    - [Forensics](#forensics)
    - [Reversing](#reversing)
    - [Editors](#editors)
    - [Programming](#programming)
    - [Web](#web)
  - [Services](#services)
    - [Anonymity](#anonymity)
  - [Tools](#tools)
    - [Tools Directory](#tools-directory)
    - [Forensics](#forensics-1)
    - [Anonymity](#anonymity-1)
    - [Reversing](#reversing-1)
    - [Information Gathering](#information-gathering)
    - [Web](#web-1)
    - [Crypto](#crypto)
    - [SQLi](#sqli)
    - [PWN](#pwn)
    - [Post Exploit](#post-exploit)
    - [APK](#apk)
  - [Miscs](#miscs)
    - [My zsh](#my-zsh)
    - [Templates](#templates)
    - [Forensics](#forensics-2)

# linux-reset

This repository was made to install all important tools for pentesting/CTF's on a Kali Linux 

## Programs
### Forensics
|           |                                                                                                                                                                                                                                                |
| --------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| pff-tools | Libpff is a library to access Personal Folder File (PFF) and Offline Folder File (OFF) formats. Those files formats are used by MS Outlook in PAB (Personal Address Book), PST (Personal Storage Table) and OST (Offline Storage Table) files. |
### Reversing
|        |                                                                                                                                                                                                                                                          |
| ------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| gdb    | GDB, the GNU Project debugger, allows you to see what is going on `inside' another program while it executes -- or what another program was doing at the moment it crashed.                                                                              |
| ltrace | ltrace intercepts and records dynamic library calls which are called by an executed process and the signals received by that process. It can also intercept and print the system calls executed by the program.                                          |
| strace | strace is a diagnostic, debugging and instructional userspace utility for Linux. It is used to monitor and tamper with interactions between processes and the Linux kernel, which include system calls, signal deliveries, and changes of process state. |
### Editors
|     |                                                                                                               |
| --- | ------------------------------------------------------------------------------------------------------------- |
| vim | Vim is a highly configurable text editor built to make creating and changing any kind of text very efficient. |
### Programming
|                |                                                                                                                                |
| -------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| git            | We all know what git is so lets skip that                                                                                      |
| docker         | Docker is a super light-weight Virtual machine which has all necessery programs and dependencies in order to run your program. |
| docker-compose | Docker Compose is a tool that was developed to help define and share multi-container applications.                             |
| gcc            | A C++ compiler for linux. Compiles .c and .cpp files. They're treated as C++ and C files                                       |
| g++            | A C++ compiler for linux. Compiles .c and .cpp files. They're treated as C++ only files                                        |
### Web
|              |                                                                                                                                                                                                                                                                                      |
| ------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| flask-unsign | Flask Unsign is a penetration testing utility that attempts to uncover a Flask server's secret key by taking a signed session verifying it against a wordlist of commonly used and publicly known secret keys (sourced from books, GitHub, StackOverflow and various other sources). |
## Services
### Anonymity
|     |                   |
| --- | ----------------- |
| tor | A service for tor |
## Tools
### Tools Directory
|                 |                                                                                                                        |
| --------------- | ---------------------------------------------------------------------------------------------------------------------- |
| Tools Directory | For tools you need Tools Directory checked before any other tool because all the tools are copied into Tools directory |
### Forensics
|             |                                                                                                             |
| ----------- | ----------------------------------------------------------------------------------------------------------- |
| volatility3 | The world's most widely used framework for extracting digital artifacts from volatile memory (RAM) samples. |
### Anonymity
|             |            |
| ----------- | ---------- |
| tor-browser | No comment |
### Reversing
|             |                                                                                                                                                                                                                                                                     |
| ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| pyinstaller | PyInstaller Extractor is a Python script to extract the contents of a PyInstaller generated Windows executable file. The contents of the pyz file (usually pyc files) present inside the executable are also extracted.                                             |
| decompyle++ | Decompyle++ aims to translate compiled Python byte-code back into valid and human-readable Python source code. While other projects have achieved this with varied success, Decompyle++ is unique in that it seeks to support byte-code from any version of Python. |
| Ghidra      | A software reverse engineering (SRE) suite of tools developed by NSA's Research Directorate in support of the Cybersecurity mission.                                                                                                                                |
### Information Gathering
|          |                                                                                                                                                                                                                                                                                      |
| -------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| WhatWeb  | WhatWeb identifies websites. Its goal is to answer the question, 'What is that Website?'. WhatWeb recognises web technologies including content management systems (CMS), blogging platforms, statistic/analytics packages, JavaScript libraries, web servers, and embedded devices. |
| rustscan | RustScan is a modern take on the port scanner. Sleek & fast. All while providing extensive extendability to you.                                                                                                                                                                     |
### Web
|            |                                                                                               |
| ---------- | --------------------------------------------------------------------------------------------- |
| JWT_Tool   | JWT_Tool is a toolkit for validating, forging, scanning and tampering JWTs (JSON Web Tokens). |
| ippsec-cli | This a simple tool to query the awesome ippsec.rocks website from your terminal               |
### Crypto
|            |                                                         |
| ---------- | ------------------------------------------------------- |
| RsaCtfTool | A tool used for RSA cracking through different attacks. |
### SQLi
|          |                                                                                                                         |
| -------- | ----------------------------------------------------------------------------------------------------------------------- |
| mongomap | Mongomap is a penetration-testing tool inspired by SQLMap, made specifically for MongoDB Injection on web applications. |
### PWN
|             |                                                                                                                                                                                                                                                                 |
| ----------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| pwncat      | pwncat is a post-exploitation platform for various targets. It started out as a wrapper around basic bind and reverse shells and has grown from there. It streamlines common red team operations while staging code from your attacker machine, not the target. |
| pwn-machine | PwnMachine is a self hosting solution based on docker aiming to provide an easy to use pwning station for bug hunters.                                                                                                                                          |
| pwndbg      | pwndbg is a GDB plug-in that makes debugging with GDB suck less, with a focus on features needed by low-level software developers, hardware hackers, reverse-engineers and exploit developers.                                                                  |
### Post Exploit
|          |                                                                                                                                                                               |
| -------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| mimikatz | mimikatz is a tool I've made to learn C and make somes experiments with Windows security.                                                                                     |
| PEASS-ng | Tool to search for possible local privilege escalation paths that you could exploit and print them to you with nice colors so you can recognize the misconfigurations easily. |
### APK
|        |                                                      |
| ------ | ---------------------------------------------------- |
| Slicer | A tool to automate the recon process on an APK file. |
## Miscs
### My zsh
|       |                                                                                                                      |
| ----- | -------------------------------------------------------------------------------------------------------------------- |
| zsh-1 | This is my custom zsh that adds a Tools alias so you can easily go there and a $mip variable to quickly get your IP. |
### Templates
|             |                                                     |
| ----------- | --------------------------------------------------- |
| templates-1 | My templates stored on github and downloaded to you |
### Forensics
|       |                                                                                                                                             |
| ----- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| dnSpy | dnSpy is a debugger and .NET assembly editor. You can use it to edit and debug assemblies even if you don't have any source code available. |
