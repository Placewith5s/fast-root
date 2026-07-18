ask() {
    printf "\n"
    printf "Paste patched boot image name: "
    read -r boot_img
}


run_commands() {
    printf "Booting to fastboot mode..."
    adb reboot bootloader

    printf "Press ENTER to continue: "
    read -r enter_listen || exit 1

    if ! fastboot devices | grep -q . ; then
        printf "No fastboot devices. Exiting..."
        exit 1
    fi

    printf "Flashing patched boot image..."
    fastboot flash boot "${boot_img%.img}.img" || exit 1
    printf "Flashed patched boot image successfully!"
}
