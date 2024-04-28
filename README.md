# pypa

pypa is a tool written in Bash that allows you to create Python modules without much effort. It creates the basic folder structure of a working Python module as required by PyPi.org. Especially beginners or those who are creating their first module often have difficulties creating a running module that is imported correctly. The tool helps to create the structure and get the module running. This program has the following features:
1. Creates the basic structure
2. Adds submodules and creates the __init__.py directly
3. When the module is ready, the module is initialized using the "init" command. A basic setup.py is added and the main __init__.py is created
4. The build and upload is integrated

# Official Website
[Official Website](https://termuxdev314.github.io/pypa/)

# Setup

Setup
```bash
git clone https://github.com/termuxdev314/pypa
cd pypa
./scripts/install-deps.bash [arguments]
```

arguments
```text
--linux [debian|archlinux]

--termux [apt|pacman]
```

shorts
```text
-ld for Debian/Ubuntu
-la for Archlinux
-ta for Termux with Apt
-tp for Termux with Pacman
```

# Installation

Base
```bash
./setup [arguments]
```

Linux
```text
./setup --linux --make 
./setup --linux --build [debian|archlinux]

Shorts:
    -lm for make
    -lbd for Debian
    -lba for Archlinux
```

Termux
```bash
./setup --termux --make
./setup --linux [apt|pacman]

Shorts:
    -tm for make
    -tba for Termux with Apt
    -tbp for Termux with Pacman
```
