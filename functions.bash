ask() {
    echo ""
    echo "Paste patched image name: (don't include extension name) "
    read -r boot_img
}

run_commands() {
    adb reboot bootloader || exit 1

    echo "Press ENTER to continue: "
    read -r enter_listen || exit 1

    cd "$HOME/Downloads" || exit 1
    fastboot flash boot "${boot_img%.img}.img"
}