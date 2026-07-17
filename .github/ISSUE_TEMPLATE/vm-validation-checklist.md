---
name: VM Validation Checklist
about: Validate the Armada Windows 98 SE appliance VM end-to-end
labels: validation, vm, armada
---

## Build Identity

- Build label: 
- Date:
- Host OS:
- 86Box version:
- ROM set identifier:

## Hardware Profile Verification

- [ ] Motherboard is Intel 440BX profile
- [ ] CPU is Pentium III 500-600 MHz
- [ ] RAM is 128 MB
- [ ] Video is 3dfx Voodoo3 3000 AGP
- [ ] Sound is Sound Blaster AWE64
- [ ] Storage is 8 GB IDE disk
- [ ] Optical drive is IDE ATAPI CD-ROM

## OS and Driver Order Verification

- [ ] Windows 98 SE installed successfully
- [ ] Intel chipset driver installed, then rebooted
- [ ] DirectX 7.0a installed, then rebooted
- [ ] Voodoo3 driver installed, then rebooted
- [ ] AWE64 driver installed, then rebooted
- [ ] Desktop stable at 1024x768, 16-bit color

## Game Installation Verification

- [ ] Original Armada CD mounted and installer completes
- [ ] Game launches once before patching
- [ ] Official patch 1.2 applied
- [ ] Reboot performed after patch

## Runtime Validation

- [ ] Main menu loads without crash
- [ ] Campaign mission 1 starts and completes basic actions
- [ ] One skirmish starts successfully
- [ ] Audio playback is stable
- [ ] Save game works
- [ ] Load game works
- [ ] Re-launch after shutdown works

## Golden Backup

- [ ] VM cleanly shut down before backup
- [ ] VM folder copied to primary backup location
- [ ] VM folder copied to secondary backup location
- [ ] Checksum manifest generated and stored with backup

## Notes

Record anything unusual (timing issues, display quirks, audio behavior, workaround steps).
