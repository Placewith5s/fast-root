# Fast Root
Root your Android phone (with an unlocked bootloader) faster than doing it manually.

## Preparation
This program doesn't require admin privileges and works on Windows only.

1. Connect the phone you want to root to your PC with the right cable.

2. On your phone, enable "USB Debugging" in "Developer Options" and check the "Allow ..." prompt.

3. If you haven't already, install the Android platform tools and make sure "fastboot" command is working as expected by running `fastboot devices`.

4. Copy and paste the patched boot image to "Downloads" folder on your PC.

## Usage
Assuming you've already done [preparation](#preparation).

1. Download Git: [Git install page for Windows](https://git-scm.com/install/windows) and make sure Git Bash is included.

2. Download the release files (.bash files): [Releases](https://github.com/Placewith5s/fast-root/releases).

3. Run Git Bash as user and go to "Downloads":
```sh
cd Downloads
```

4. Run the program on Git Bash:
```sh
sh main.sh
```

## Future Usage
1. Double check [preparation](#preparation).
2. When opening Git Bash, press up and down arrows to reuse previous commands making rooting even faster.

> [!NOTE]
> Your bootloader must already be unlocked before using this program
> 
> Windows only program
> 
> The patched boot image's location should be PC's "Downloads" folder
