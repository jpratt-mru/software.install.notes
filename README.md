# software.install.notes
Notes for all the software installs I do as part of my job.

## Guiding principles

These installs have been created primarily for MACO labs and MACO instructors (both their office machines and SmartCabinets in rooms where they are lecturing). As such, the following principles were followed in their creation:

1. Installations should put all shortcuts in users' start menus, **not** in All Users - give people the ability to control their own Start Menu for heaven's sake.
    - Given this, assume that almost every install will have a step where it moves a default shortcut/folder from All Users to everyone's profile (as well as Default's).
1. Provide an uninstaller that does a good effort at cleaning up everything that the installer changed, but for super-complicated apps (like Visual Studio or MiKTeX) that have tendrils everywhere, don't worry about it.
1. Given that the primary use for these apps is in labs and SmartCabinets - things that are meant to be wiped clean and greenfielded on a regular (semester or at least academic year) basis, don't sweat creating updates - uninstall followed by a new install is the way to go.
1. A reasonable effort should be made to test each application to make sure the install has worked successfully. To this end, a series of reasonable test steps should be made for each app, and these steps documented in the corresponding installer notes.
