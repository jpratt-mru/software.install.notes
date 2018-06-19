# JustColorPicker

## Version history

| semester | version |
| ---      | ---     |
| Fall 2018 | 5.1 |
| Fall 2016 | 4.6 |
| Fall 2015 | 4.3 |
| Fall 2014 | 3.5 |
| Fall 2013 | 3.2 |
| Fall 2012 | 2.6 |

## Type of installation

Choco zip

## What changes will a user notice after the install?

- A JustColorPicker shortcut is added to the Start Menu.

## Who uses it?

Web-developer types.

## What changes from a default installation are made?

- [**default**] When you start up the app, you get a language prompt.
  - [**to change manually**] Run the app with a /ini flag. When the app starts up, it'll create the ini file for you in the same location as the exe. Choose English as the language and on exit, the ini file will be properly tweaked.
  - [**to change on install**] Put a jcpicker.ini file with the necessary language settings into the same directory as the exe when you make your 7z file - choco will handle the rest.
- [**default**] When you close the app, you get a confirmation dialog.
  - [**to change manually**] Do the same steps as above to tweak the ini - but you also need to add a registry hack.
  - [**to change on install**] See `chocolateyinstall.ps1`


## Surprises & annoyances

- The fact that the ini file thing doesn't handle the close nag is a tad annoying; the registry entry was hard to do because it involved curly braces and Powershell and curly braces have a "special" relationship. (Noted in `chocolateyinstall.ps1`.)

## If updating this software, is there anything I should know?

- Nope

## Misc

- None