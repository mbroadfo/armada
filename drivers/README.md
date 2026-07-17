# Driver and Media Manifest

This folder tracks the exact files required to reproduce the Windows 98 SE Armada VM build.

Do not commit proprietary binaries to this repository.
Store installers in a local, backed-up location and record their checksums here.

## Required Files

| Item | Suggested Filename | Source You Provide | SHA256 |
|---|---|---|---|
| Windows 98 SE CD image | win98se.iso | Your own licensed media | |
| Win98 startup disk image (optional) | win98se_boot.img | Your own media/tools | |
| Intel 440BX chipset INF | intel_440bx_inf_win9x.exe | Archived vendor package | |
| DirectX 7.0a redist | dx7a_redist.exe | Archived Microsoft redist | |
| 3dfx Voodoo3 Win9x driver | voodoo3_win9x_driver.exe | Archived vendor package | |
| Creative AWE64 Win9x driver | awe64_win9x_driver.exe | Archived vendor package | |
| Star Trek Armada official patch 1.2 | armada_patch_1_2.exe | Official patch mirror archive | |
| Original game CD image (if used) | armada_original_cd.iso | Your original disc image | |

## BIOS ROM Notes

BIOS ROM files are copyrighted and must come from sources you are legally entitled to use.
Keep ROM files outside this repository, and document where they are stored.

## Recommended Local Storage Layout

Example (host machine only, not committed):

- D:/retro-media/win98/
- D:/retro-media/roms/86box/
- D:/retro-media/armada/

## Verification

Run checksum generation on your local media archive:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/verify-checksum.ps1 -TargetFolder "D:/retro-media"
```

Copy resulting hashes into the table above.
