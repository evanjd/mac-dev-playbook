# Full Mac Setup Process

There are some things in life that just can't be automated... or aren't 100% worth the time :(

This document covers that, at least in terms of setting up a brand new Mac out of the box.

## Initial configuration of a brand new Mac

Before starting, I completed Apple's mandatory macOS setup wizard (creating a local user account, and optionally signing into my iCloud account). Once on the macOS desktop, I do the following (in order):

- Install Ansible (following the guide in [README.md](README.md))
- **Sign in to App Store** (since `mas` can't sign in automatically)
- Clone mac-dev-playbook to the Mac: `git clone git@github.com:geerlingguy/mac-dev-playbook.git`
- Drop `config.yml` from remote strage to the playbook (copy over the network or using a USB flash drive).
- Run the playbook.
  - If there are errors, you may need to finish up other tasks like installing 'old-fashioned' apps first. Then, run the playbook again ;)
- Start Synchronization tasks:
  - Open Photos and make sure iCloud sync options are correct
  - Open Music, make sure computer is authorized, and set Library sync options
  - Open iMessage and ensure Messages in iCloud is switched on
- Install or complete setup for old-fashioned apps:
  - Open Stats and configure CPU/Net/Temp Combined view
  - Open Office apps and log in to my Microsoft account.
  - Open Xcode and complete initial setup
  - Open VS Code and sign in with GitHub account to sync settings
- Open Calendar and enable personal Google CalDAV account (you have to manually sign in).
- Manually copy `~/Developer` folder from another Mac.
- Manual settings to automate someday:
  - Safari:
    - Install the 'Return YouTube Dislike' Userscript in Userscripts
- These things might be automatable, but I do them manually right now:
  - Install Wireguard VPN configurations
  - Add `Developer` folder to Finder sidebar

## To Wrap in Post-provision automation

```
# SSH setup.
ssh-keygen  # and create a default key to set up .ssh folder
# TODO - Add SSH key to GitHub and NAS

# Ansible setup.
sudo mkdir -p /etc/ansible

# Vim setup.
mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/bundle
cd ~/.vim/autoload
curl https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim > pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/preservim/nerdtree.git
```

## When formatting old Mac

- Sign out of Cleanshot X (if installed)
- Sign out of Panic Sync in Transmit
- Deactivate BetterDisplay Pro license
- Deauthorize Apple Music in iTunes/Music App
- Make sure any projects in `~/Developer` are backed up.
- Push any changes to `dotfiles` to GitHub
- Follow Apple's guide [here](https://support.apple.com/en-au/HT212749)
