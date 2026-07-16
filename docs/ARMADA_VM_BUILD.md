# Armada Appliance VM Build (86Box + Windows 98 SE)

This is the canonical runbook for building a stable virtual machine dedicated to the original Star Trek: Armada.

## 1) Hardware profile (recommended)

- Motherboard: Intel 440BX board (ASUS P3B-F if available)
- CPU: Pentium III, 500-600 MHz
- RAM: 128 MB
- Graphics: 3dfx Voodoo3 3000 AGP
- Sound: Sound Blaster AWE64 (ISA)
- Storage: 8 GB IDE disk image
- Optical: IDE ATAPI CD-ROM (24x/32x)
- Floppy: 1.44 MB
- Network: Disabled during setup

Why this profile: period-correct for 1999-2000 and known for high compatibility with DX7-era titles while keeping configuration complexity low.

## 2) Software baseline

- Operating system: Windows 98 Second Edition (4.10.2222 family)
- DirectX: DirectX 7.0a
- Game patch: Star Trek: Armada official patch 1.2

## 3) Required install media (you provide)

- Windows 98 SE CD (and startup disk if needed)
- Original Star Trek: Armada CD
- BIOS ROM files legally obtained by you
- Driver packages:
  - Intel 440BX INF/chipset utility
  - 3dfx Voodoo3 Win9x driver
  - Creative AWE64 Win9x driver
  - DirectX 7.0a redistributable
  - Armada official 1.2 patch

## 4) 86Box setup from scratch

1. Configure ROM path in 86Box.
2. Create new machine with the hardware profile above.
3. Create 8 GB IDE HDD image.
4. Attach Win98 install media to CD-ROM.
5. Boot setup media, partition (FDISK), format C:, and install Win98 SE.

## 5) Driver and component order (exact)

1. Intel 440BX chipset INF
2. Reboot
3. DirectX 7.0a
4. Reboot
5. Voodoo3 graphics driver
6. Reboot
7. AWE64 sound driver
8. Reboot
9. Set display to 1024x768, 16-bit color

Do not change this order unless troubleshooting requires it.

## 6) Install and patch Armada

1. Mount original Armada CD.
2. Install game with defaults.
3. Launch once, then exit.
4. Apply official patch 1.2.
5. Reboot.
6. Validate with one campaign mission + one skirmish.

## 7) Golden-state backup (critical)

After successful validation:

1. Shut down VM cleanly.
2. Copy full VM folder to at least two backup locations.
3. Save checksums for archived files.

Suggested naming:

- Armada-Win98SE-GOLD-YYYY-MM-DD

## 8) Common problems

- No boot or black screen: ROM path or board ROM mismatch.
- Incorrect resolution/color depth: video driver missing/incorrect.
- No sound: AWE64 mismatch or driver not installed.
- Game launch crash: missing DX7.0a or patch not applied.
- CD check failure: optical media not mounted as expected.

## 9) Immutable appliance rule

Once stable, do not change motherboard, CPU, video, or sound hardware in the VM definition.

## 10) Archival checklist

- Keep copies of all driver installers and patch binaries.
- Keep a text note of exact hardware choices and versions.
- Periodically test boot and game launch after host/emulator updates.
- Keep one known-good 86Box installer archived.
