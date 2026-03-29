# Post-Install Manual Steps

Use this checklist after running the playbook.

## 1) Sign in to the Mac App Store

`mas` installs require your Apple ID session.

1. Open the `App Store` app.
2. Sign in with your Apple ID.
3. Re-run the playbook (or at least `--tags mas`) if any MAS apps were skipped.

## 2) Enable Safari Extensions

The extensions can be installed via `mas`, but Safari activation is manual.

1. Open each extension host app once:
   1. `uBlock Origin Lite`
   2. `SponsorBlock for Safari`
   3. `AutoPiP`
2. Open Safari and go to `Safari` -> `Settings` -> `Extensions`.
3. Enable:
   1. `uBlock Origin Lite`
   2. `SponsorBlock for Safari`
   3. `AutoPiP`
4. Set website permissions to your preference (typically `Allow on Every Website` for these).

## 3) Full Disk Access (Manual)

`Full Disk Access` is controlled by macOS TCC privacy protections and is not reliably grantable from a normal local automation script.

To enable it manually:

1. Open `System Settings` -> `Privacy & Security` -> `Full Disk Access`.
2. Enable `Ghostty`.
3. Enable `Terminal`.
4. Quit and reopen those apps.

## 4) Set Ghostty as Your Effective Default Terminal (Manual)

There is currently no single macOS-wide "default terminal app" switch for all terminal entry points. Use these practical equivalents:

1. In Finder, right-click a folder and use `Services` -> `New Ghostty Window Here` (or `New Ghostty Tab Here`).
2. Optional: add keyboard shortcuts for those services in `System Settings` -> `Keyboard` -> `Keyboard Shortcuts` -> `Services`.
3. For file types that currently open another terminal app, use Finder `Get Info` -> `Open with` -> `Ghostty`, then `Change All`.

## 5) AutoPiP Permissions Check

AutoPiP `v2.0.0` is currently not notarized, so the first install needs manual macOS security approval.

Reference:
- https://github.com/vordenken/AutoPiP/releases/tag/v2.0.0

Manual first-install flow (from the release notes):

1. Download and open `AutoPiP.dmg`.
2. If macOS blocks the DMG, open `System Settings` -> `Privacy & Security` and click `Open Anyway`.
3. Open `AutoPiP.dmg` again and copy `AutoPiP.app` to `/Applications`.
4. Launch `AutoPiP.app`.
5. If macOS blocks the app, go back to `System Settings` -> `Privacy & Security` and click `Open Anyway`.
6. Launch `AutoPiP.app` again and complete in-app setup prompts.
7. Confirm the Safari extension is enabled in `Safari` -> `Settings` -> `Extensions`.
8. Test on a supported site (for example YouTube in Safari).

## 6) Optional: Launch Newly Installed Apps Once

Some apps complete setup and permission prompts on first launch.

Suggested first-run list:

- `Steam`
- `ChatGPT`
- `Claude`
- `Bambu Studio`
- `Moonlight`
- `Fork`
- `DaVinci Resolve`
- `Parcel - Delivery Tracking`
