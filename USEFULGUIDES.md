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

### Some Common Issues and Solutions 

```yaml
Query1: I'm unable to increase the volume using volume keys in KDE plasma.
        It's showing no input or output devices found.

Solution: Try updating the kernal to the latest and
          run command 'sudo pacman -S pipewire pipewire-alsa pipewire-jack pipewire-pulse'.
          This solution also works in the case when bluetooth devices are not getting paired.

Query2: How to permanently alias a command in fish shell?
        e.g. alias pacu=' sudo pacman -Syu' this works but after reopening the terminal this command doesn't works.

Solution: You have to put it into the 'config.fish' file.

Query3: I'm unable to update system after fresh installation of arch based distro.

Solution: Run command 'sudo pacman -Sy archlinux-keyring' and then update the system easily.

Query4: I'm unable to boot into BIOS using function keys. 

Solution: Run command 'sudo systemctl reboot --firmware' on terminal.

Query5: How to remove Windows entries from GRUB after removing Windows. PS: I'm currently using only linux.

Solution: On terminal run command 'sudo rm -r/boot/efi/EFI/Microsoft'. 
          Then update grub using command 'sudo update-grub'.
          If you are using arch based distro then use 'sudo grub-mkconfig -o /boot/grub/grub.cfg'.

Query6: How to auto mount a external hard disk drive or any drives without root password ?

Solution: => run command sudo blkid and then copy the UUID of your drive from there.
          => then run command sudo nvim /etc/fstab then paste the UUID in format 'UUID=875925fjald'.
          => then press tab and write the path of mount point.
          => again press tab and write the filesystem name eg. 'ext4' or 'ntfs'.
          => again press tab and write 'defaults' again press tab write '0' then tab then '0'.
          => save and exit and run 'sudo mount -a' , now reboot your system.

Query7: How to disable kde wallet popping out after password change in kde ?

Solution: paste 'Enabled=false' in '~/.config/kwalletrc' file. To disable frequent asking of wifi password by kde
          daemon, go to Settings -> Network -> Connection -> Wifi Security then set store password for all users
          (not encrypted).
```

### Image Reference for Query6 and Query7

![autoMountExternalDrives](https://github.com/avinashkrishna07/play-with-linux/assets/97250827/9eb5cd79-1920-4508-af9a-38b19fb2b344)

![disable_kwallet](https://github.com/avinashkrishna07/play-with-linux/assets/97250827/bfb9f664-1351-4108-a7ed-1761344bf76c)

---

### Some Basic Linux Commands

```yaml
sudo su : For changing normal user mode to root user i.e superuser.
whoami : Displays username.

ls : This command will list files of present working directory.
     Use flag -a for listing hidden files, -l for seeing permissions and -R for listing items inside the directory
     of directory. ie. ls -alR.

cd /directory: For changing directory.
cd .. : For moving to previous directory.
cd ~ : For changing directory to home directory.
cd / : For changing into root.

clear, history, exit	: For clearing, listing previously used commands and closing the teminal.

touch "filename.extension" : For creating a file in working directory.

mkdir "directory\name" : For creating an empty directory in working directory.

rmdir "directory\name" : For deleting an empty directory.
rm -r "directory\name" or "filename.extension" : For deleting non-empty directory or files.
# NOTE: Use rm -rf "directory\name" for deleting non empty directory. -f flag is used for force delete.

chmod "xyz" "filename" : For changing permissions of a file or directory. 
                        ie. chmod 777 filename.extension or chmod u+x directory\name.

htop or btop : For system monitoring.
neofetch : For fetching system information.
# NOTE: Make sure that neofetch is installed on your system.
vimtutor : For learning how to use vim editor.

du -hs /fullDirectoryPath/ : For fetching size of a directory.
                             Use du --help for more information.
# NOTE: Very useful when piped with pwd command. eg. pwd | du -hs .

fdisk -l : For disk partition list.
           Use fdisk --help for more information.
lsblk -f : For disk partion and filesystem related information.
           Use lsblk --help for more information.

cat "filename" or less "filename" : For displaying file content on terminal.
cat "filename1" > "filename2" : For overwriting content of "filename1" to "filename2".
# NOTE: this action will delete the earlier content of filename2.
cat "filename1">>"filename2" : For overriding content of "filename1" to "filename2".
tac "filename1" > "filename2" and tac "filename1" >> "filename2" : For flipping one file into another.
# NOTE: Very useful if you want to save your commands from history.
cat $SHELL : Gives path of the SHELL.

command >> filename.txt : For storing output of a command into 'filename.txt' file.
mv "old_filename" "new_filename" : For renaming a file or directory.
                                  Use flags -i -v for more information.
cp "old_filename" "new_filename" : For copying contents of "old_filename" to new new file named "new_filename".

alias "shortCommand" = "longCommand" : For making custom commands.
command1 | command2 : Will take output of command1 as input of command2.
                     ie. ls | wc -l (This type of operation is known as piping.)
wc : For counting no. of words, lines, character and etc in a file.
    Use different flags ie. wc -l, wc -c, etc for more information check wc --help
# NOTE: Very useful when used with piping. eg. cat gitCommands.txt | grep git | wc .                               

whereis "package\name" : This command locates the source, binary, and manuals sections for specified package.
package --version : Displays version of the package.
```

### Image Reference for Chroot.

![chrootCommands](https://github.com/avinashkrishna07/play-with-linux/assets/97250827/5115e30f-e42c-4e92-bf8e-2b528b11e38f)

---

```
---
