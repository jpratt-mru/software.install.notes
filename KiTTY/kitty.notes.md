# KiTTY

## Version history

| semester | version |
| ---      | ---     |
| Fall 2018 | 0.70 |
| Fall 2017 | 0.68 |
| Fall 2016 | 0.67 |
| Fall 2015 | 0.64 |
| Fall 2012 | 0.62 |

## Type of installation

Choco zip

## What changes will a user notice after the install?

- An INS shortcut is added to the Start Menu.

## Who uses it?

Anyone who wishes to connect to INS.

## What changes from a default installation are made?

- [**default**] There is no saved INS session.
  - [**to change manually**] Run the portable exe and save a session (to host ins.mtroyal.ca) called INS. This will add an INS file to the Sessions folder.
  - [**to change on install**] File is in the 7z folder of the install - choco handles it.
- [**default**] The character set defaults to ANSI, which causes issues with some of the things users see when they compile. (In particular, the ` symbol.)
  - [**to change manually**] Make the change while in Kitty (through Window > Translation) and save the session again. This modifies the Sessions\ins file.
  - [**to change on install**] Same as above.
- [**default**] The default number of scrollback lines is too low - this is annoying for long cats.
  - [**to change manually**] Start up the INS session and set the number of lines to 10000 (through Window). Re-save. This modifies the Sessions\ins file.
  - [**to change on install**] Same as above.
- [**default**] The keepalive ping is turned off. We'd like to ping every 30 seconds to improve the chances that the user won't get booted off thanks to our network settings.
  - [**to change manually**] Change this through the Connection setting for the INS session. Re-save. This modifies the Sessions\ins file.
  - [**to change on install**] Same as above.


## Surprises & annoyances

- The icon is defaulting to a choco Shim icon. Might need to tweak this in the future.

## If updating this software, is there anything I should know?

- Just keep an eye on whether INS has had a major update or not - it will effect the host keys - see the notes below.

## Misc

- To build this install from scratch, you want to put the downloaded kspc.exe and kitty_portable.exe files into a folder and run the kitty exe. (You'll get a warning about a missing folder, which you can ignore - it won't show up again.) This will create an kitty.ini file, as well as some folders (Jumplist and Sessions). These files and folders form the basis of your default install. We'll modify some things in the next section.
- By plonking pscp.exe in the install directory, users can perform easy scp file transfers by either right-clicking on the title bar or pressing ctrl+F3.
- Upgrades to INS will probably cause a need to update the file in the SshHostKeys directory in the install directory.
- You can play with the Sessions\ins and kitty.ini files directly if you want to play around hard-core with settings.

## Testing

### Testing files

- Just have a file (pretty well any file) handy for dragging and dropping.

### Testing method

1. Make sure you can sign in without a key fingerprint warning.
1. Make sure you can drag and drop a file into the window to successfully scp a file to your home directory.
1. Compile a file with errors from within emacs and confirm backticks are showing in error messages.