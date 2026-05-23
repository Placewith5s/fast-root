ask() {
    printf "\n"
    printf "Paste patched image name: "
    read -r boot_img
}


run_commands() {
    adb reboot bootloader || exit 1

    printf "Press ENTER to continue: "
    read -r enter_listen || exit 1

    fastboot flash boot "${boot_img%.img}.img"
}
