# The Boot Process

Boot Process is the process for prepairing a system ready to use including everything from power switch to display the graphical user interface this boot process is complete in few step and if we have knowledge step-by-step how to boot linux it will be helpful to find the solution for problem while facing during the booting

# BIOS - First Step

When the computer starts, the BIOS (Basic Input/Output System) initializes the hardware, including the keyboard, screen, and memory. If the BIOS does not work properly, it could be due to hardware problems like faulty RAM, keyboard, or display or BIOS-related issues such as corrupted firmware or dead CMOS battery. The BIOS is responsible for detecting and initializing hardware components, then passing control to the bootloader to start the operating system. One of its initial steps is the POST (Power-On Self Test), which checks that essential hardware components like memory, keyboard, and display are functioning correctly before booting.

The BIOS software is stored on a read-only memory (ROM) chip on the motherboard. After this, the remainder of the boot process is controlled by the operating system (OS).

# **Master Boot Record (MBR), EFI Partition, and Boot Loader**

once the checking all of those hard wares check system passed control to the boot loader and usually bootloader is store in system storage such as hard disk and ssd. Aur iske ander bhi sabse top layer per jise boot sector kehte hai store hota hai isme simply code hota hai to start boot from entire hard disk or ssd

![WhatsApp Image 2025-08-16 at 1.03.50 AM.jpeg](The%20Boot%20Process%2025056f25ee6580518d72e9f57f6fba16/WhatsApp_Image_2025-08-16_at_1.03.50_AM.jpeg)

the diffrence between UEFI and MBR. The MBR (Master Boot Record) the tredition way of start booting this is store at boot sector which at first sector of hard disk (512bytes) and the UEFI (Unified Extensible Firmware Interface) the modern tech to start booting this is store at primary partition

 

![WhatsApp Image 2025-08-16 at 3.56.40 PM.jpeg](The%20Boot%20Process%2025056f25ee6580518d72e9f57f6fba16/WhatsApp_Image_2025-08-16_at_3.56.40_PM.jpeg)

when we power on our system after UEFI or Bios work bootloader asked to the use “Hey which bootable partition you want to boot (on)!”

# The Boot Loader In Action

The boot loader has two distinct stages:

For systems using the BIOS/MBR method, the boot loader resides at the first sector of the hard disk, also known as the Master Boot Record (MBR). The size of the MBR is just 512 bytes. In this stage, the boot loader examines the **partition table** and finds a bootable partition. Once it finds a bootable partition, it then searches for the second stage boot loader, for example GRUB, and loads it into RAM (Random Access Memory). For systems using the EFI/UEFI method, UEFI firmware reads its Boot Manager data to determine which UEFI application is to be launched and from where (i.e., from which disk and partition the EFI partition can be found). The firmware then launches the UEFI application, for example GRUB, as defined in the boot entry in the firmware's boot manager. This procedure is more complicated but more versatile than the older MBR methods.

The second stage boot loader resides under **/boot**. A splash screen is displayed, which allows us to choose which operating system (OS) and/or kernel to boot. After the OS and kernel are selected, the boot loader loads the kernel of the operating system into RAM and passes control to it. Kernels are almost always compressed, so the first job they have is to uncompress themself. After this, it will check and analyze the system hardware and initialize any hardware device drivers built into the kernel.

![WhatsApp Image 2025-08-16 at 8.43.21 PM.jpeg](The%20Boot%20Process%2025056f25ee6580518d72e9f57f6fba16/WhatsApp_Image_2025-08-16_at_8.43.21_PM.jpeg)