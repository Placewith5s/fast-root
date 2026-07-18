ask() {
    printf "\n"
    printf "Paste boot image name: "
    read -r boot_img
}


run_commands() {
    printf "Booting to fastboot mode...\n"
    adb reboot bootloader || printf "Could not go to fastboot mode!\n"

    printf "Press ENTER to continue: "
    read -r enter_listen || exit 1

    if ! fastboot devices | grep -q . ; then
        printf "No fastboot devices. Exiting..."
        exit 1
    fi

    printf "Flashing boot image...\n"
    fastboot flash boot "${boot_img%.img}.img" || exit 1
    printf "Flashed boot image successfully!"
}
