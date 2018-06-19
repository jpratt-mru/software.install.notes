# ZoomIt

## Version history

| semester | version |
| ---      | ---     |
| Fall 2013 | 4.5 |
| Fall 2012 | 4.2 |

## Type of installation

Choco zip

## What changes will a user notice after the install?

- A ZoomIt shortcut is added to the Start Menu.

## Who uses it?

Anybody, really. Useful mostly for instructors who want to zoom in on code or the like.

## What changes from a default installation are made?

- [**default**] The app does a license pester every time it's run unless you agree to the license.
  - [**to change manually**] Run program and accept agreement.
  - [**to change on install**] See `chocolateyinstall.ps1`
- [**default**] By default, the zoom key combo is Ctrl+1, which unfortunately clashes with Eclipse's auto-correct combo. Since Eclipse is much more frequently used, ZoomIt loses, and needs to be mapped to Ctrl+F1. (In order to keep the other ZoomIt key combos consistent, they could be mapped to function keys as well - I haven't done this though.)
  - [**to change manually**] Run program change the combo in the appropriate tab.
  - [**to change on install**] See `chocolateyinstall.ps1`


## Surprises & annoyances

- None

## If updating this software, is there anything I should know?

- Nope

## Misc

- If you want to have the program start on system start, you need to add `"C:\ProgramData\chocolatey\lib\zoomit\tools\ZoomIt.exe"` (those quotes are important, compadre) to `HKCU:\Software\Microsoft\Windows\CurrentVersion\Run`
 