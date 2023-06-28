<h1 align=center>Informative Guides</h1>
<p>This section comprises blogs that offer valuable and practical information, including guides for system bug fixing, installation procedures, fundamental Linux commands, and various other topics.</p>

---
### Fix Desktop Global Scaling 

```yaml
# How to fix global scaling on KDE desktop environment?
# I'm on laptop with 14th inch screen, fonts size and other stuffs are too small.

Step 1:
  Go to settings:
        Display and Monitor -> Display Configuration -> Set Global scale to 175%(Recommended)
Step 2:
  Go to settings:
        Startup and Shutdown -> Login Screen(SDDM) -> Apply Plasma Settings

```
---

### Pacman Cheatsheet

```yaml
About: Pacman is the package manager for Arch Linux and its derivatives.

Common commands:
    sudo pacman -Syu : Upgrade everything
    sudo pacman -Syu <pkg> : Install packages and update package list
    sudo pacman -S <pkg> : Install packages only
    sudo pacman -Rsc <pkg> : Uninstall packages
    sudo pacman -Ss <keywords> : Search packages for keywords
    sudo pacman -Rns $(pacman -Qdtq) : Uninstall unneeded packages
    sudo pacman -Qs <query> : Search installed packages for keywords
```
---

### Ventoy Installation

```yaml
#This method will work only on arch based distro.

Step 1:
  Install ventoy package: Run command "sudo pacman -S ventoy-bin" on terminal.

Step 2:
  #Plug-in desired USB flash drive and
  #locate device name of USB flash drive using the following commands:
        => lsblk -f
        => sudo mount /dev/sdx  where x maybe any drive letters.
  NOTE: In these instructions the USB flash drive device name is assumed to be "/dev/sdc".

Step 3: Install ventoy to USB using following commands:-
        => ventoy -i /dev/sdc 

  #Installation completed.
```
---

### System Re-installation Guides

```yaml
Setup steps to recover system configuration:

    Step 1: Run setup script for installing neccessary packages or softwares.
    Step 2: Do setup your system configuration with konsave.
    Step 3: Overwrite .config files in .config folder(press Ctrl+H in home directory). 
    #NOTE: Don't delete .config folder, overwrite it.
    Step 4: Delete uneccessary packages on system and install neccessary packages as per your need.
    Step 5: Check for any errors or issues and do fix.

Setup your code editors(IDEs):

    VS Code: Login with GitHub or Microsoft.
             It will automatically recover your configuration if synced earlier.

Setup your browser:

    Brave: Do setup your browser by sync code or just overwrite the browser config in .config folder.
```
---

### Delete Linux from Windows

```yaml
# This step is done after deleting the linux partion on disk management in Windows.
# This step will prevent booting in grub rescue or Windows recovery mode after deleting linux partition.

Open command prompt as an administrator:
    Now run the commands in sequence: 
        => diskpart
        => list disk
        => select disk 0
        => list partition
        => select partion 1 (NOTE:- here partion 1 contains system, numbers may vary.)
        => assign letter=x  (you can assign any alphabet letter.)
        => exit
        => x:
        => dir
        => cd efi
        => dir
        => rd ubuntu /s    (NOTE:- there can be name of any distro in place of ubuntu.)
        => y
        => dir
        => exit

# Once this step is done don't forget to unassign drive letter x from disk part.

Again open the command prompt as an administrator:
    Now run the commands in sequence:
        => diskpart
        => list volume
        => select volume 1 (NOTE:- here volume 1 has assigned letter 'x' it may be different in your case.)
        => remove letter x
        => exit

# If you are facing any difficulties just search the web and check YouTube videos related to this.
```
---                                                                                                                

