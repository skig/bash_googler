# bash_googler
integrate google to your bash terminal
## Setup:
For regular bash:
```console
user@terminal:~$ ./add_google_to_terminal.sh
```
The script will add `google` command to your bash in ~/.bashrc file

Also it is possible to specify the output file, e.g.:
```console
user@terminal:~$ ./add_google_to_terminal.sh ~/.zshrc
```
The script will add `google` command to .zshrc file. It might be needed if you are using zsh instead of bash

## Usage:
```console
user@terminal:~$ google how to exit vim
```
The command will open your web browser with "how to exit vim" request at google.com
