# What are dotfiles
Dotfiles are the customization files that are used to personalize your Linux or other Unix-based system.  You can tell that a file is a dotfile because the name of the file will begin with a period–a dot!  The period at the beginning of a filename or directory name indicates that it is a hidden file or directory.  This repository contains my personal dotfiles.  They are stored here for convenience so that I may quickly access them on new machines or new installs.  Also, others may find some of my configurations helpful in customizing their own dotfiles.

```bash
 curl -Lks https://raw.githubusercontent.com/nickhartjes/dotfiles/main/.bin/install.sh | /bin/bash
```

## How To Manage Your Own Dotfiles
There are a hundred ways to manage your dotfiles. Personally, I use the git bare repository method for managing my dotfiles. Here is an article about this method of managing your dotfiles: https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/