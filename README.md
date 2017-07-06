# BASHENV
*bashenv* is a set of configuration files for a fresh Ubuntu install.  Typically this is to get the development environment and tools set up correctly.
It installs and configures tmux, powerline, vim and vundle.

The assumption is setting up a proper editing environment for a Node.js developer.


## Installation
Installation simplifies quite a lot of things, however please look at the files in the repo before running install.sh.
At the very least you can see what is being done.  You should also look over the config files.  While the install script will append these to the existing config files (if any), it's still possible you have existing aliases, or don't want all of the applications to be installed.  Feel free to copy pieces from the config files manually.

Running ./install.sh may clobber variables, or install things you aren't happy with.

You have been warned :)

Clone the repo and run the install.sh:

```bash
 $ mkdir ~/tmp
 $ git clone https://github.com/pentatronix/bashenv.git ~/tmp/
 $ cd ~/tmp/ && ./install.sh

```

## About this setup
This is an opinionated little install script.  It expects that this is a fresh install of a recent Ubuntu (16.04 lts or higher).
It will append these files to your existing configs (if any.)

This project is open to pull requests.

