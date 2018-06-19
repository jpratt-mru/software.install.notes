# 7-Zip

## Version history

| semester | version |
| ---      | ---     |
| Fall 2018 | 18.5 |
| Fall 2017 | 16.04 |
| Fall 2016 | 16.02 |
| Fall 2015 | 15.05 |
| Fall 2012 | 9.20 |

## Type of installation

Choco exe installer

## What changes will a user notice after the install?

- A 7-Zip shortcut folder is added to the Start Menu.
- Context menus now have a 7-Zip entry, providing easy file compression/decompression.
- Context menus now have a CRC SHA entry, allowing you to calculate various checksums for a file.

## Who uses it?

Everybody! Who doesn't like compression?

## What changes from a default installation are made?

- Not applicable

## Surprises & annoyances

- Meh

## If updating this software, is there anything I should know?

- No

## Misc

- There are no file associations for this app out of the box, meaning if you want to open an archive, you need to right-click on it. (Zip files are an exception, as Windows already has this capability built in.) I *had* considered adding file associations, but felt it didn't really bring anything useful to the party and having *some* files (zips) behave differently than others just not intuitive.

## Testing

### Testing method

1. Confirm that the zip file has the usual Windows icon for zip files.
1. Confirm that you can open each file using the 7-Zip context menu.
1. Confirm that you can decompress each file using the 7-Zip context menu.
1. Confirm that you can compress to zip using the 7-Zip context menu.
1. Confirm that the zip behaves normally as per a typical Windows 7 install when double-clicked.