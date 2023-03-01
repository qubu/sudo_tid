# sudo_tid
Script to enable touch id for sudo command for Mac OSX. Tested on macOS 13.2.1 (22D68). 
You need the root password to run it. The script modifies the `/etc/pam.d/sudo` file by adding the line `auth sufficient pam_tid.so`.
