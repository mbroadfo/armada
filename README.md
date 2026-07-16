# Armada Win98 86Box Build

A practical, repeatable build for a dedicated Windows 98 SE virtual machine in 86Box to run the original **Star Trek: Armada** as faithfully and reliably as possible.

## What this repository contains

- A complete build guide with recommended hardware profile
- Driver installation order and troubleshooting notes
- A long-term maintenance checklist for archival stability
- Utility scripts for backing up and checksumming VM assets

## Fast start

1. Read `docs/ARMADA_VM_BUILD.md`.
2. Build the VM exactly as documented.
3. Create your golden backup after validation.
4. Use `scripts/backup-vm.ps1` to archive VM artifacts.

## Scope

This repository documents and automates a **single-game appliance VM**. It does not distribute copyrighted game files, BIOS ROMs, or proprietary drivers.

## Legal

You must provide your own legally obtained:

- Windows 98 SE installation media/license
- BIOS ROM files for emulated hardware
- Original Star Trek: Armada CD
- Driver packages and patch installers

## Project layout

```text
.
|-- docs/
|   `-- ARMADA_VM_BUILD.md
|-- scripts/
|   |-- backup-vm.ps1
|   `-- verify-checksum.ps1
|-- .gitignore
`-- README.md
```

## Notes for future you

When this VM is stable, do not change core virtual hardware (board, CPU, GPU, sound). Treat it as immutable and restore from backups if anything drifts.
