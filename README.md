`stow <value>` symlinks the specified folder's content into relative path one directory up (`..\`).

## Other Configurations

### pacman.conf

```
[core]
Include = /etc/pacman.d/mirrorlist

[extra]
Include = /etc/pacman.d/mirrorlist

#[community-testing]
#Include = /etc/pacman.d/mirrorlist

[community]
Include = /etc/pacman.d/mirrorlist

# If you want to run 32 bit applications on your x86_64 system,
# enable the multilib repositories as required here.

#[multilib-testing]
#Include = /etc/pacman.d/mirrorlist

[multilib]
Include = /etc/pacman.d/mirrorlist

[options]
UseSyslog
Color
CheckSpace
VerbosePkgLists
ParallelDownloads = 8
ILoveCandy
```
