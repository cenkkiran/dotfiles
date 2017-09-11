# dotfiles
My personal dotfiles for MacOS

*.mackup*
Mackup configrations

* .functions

- Update macOS to the latest version with the App Store
- Install Xcode from the App Store, open it and accept the license agreement
- Install macOS Command Line Tools by running xcode-select --install
- Copy public and private SSH keys to ~/.ssh and make sure they're set to 600
- Clone this repo to ~/.dotfiles
- Append /usr/local/bin/zsh to the end of your /etc/shells file
- Run install.sh to start the installation
- Make sure Dropbox is set up and synced
- Restore preferences by running mackup restore
- Restart your computer to finalize the process
Your Mac is now ready to use!

Note: you can use a different location than ~/.dotfiles if you want. Just make sure you also update the reference in the .zshrc file.