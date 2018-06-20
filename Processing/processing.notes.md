# Processing

## Version history

| semester | version |
| ---      | ---     |
| Fall 2018 | 3.3.7 [32-bit] |
| Fall 2017 | 3.3.4 [32-bit] |

## Type of installation

Tweaked Chocolatey zip

## What changes will a user notice after the install?

- The system's environment variables now has a JAVA_HOME, with a value of the path down to the JDK's install directory in Program Files (x86).
- The system's PATH variable has %JAVA_HOME%\bin appended to it.
  - note that this behaviour is somewhat different with "my" installs, which put things into the *User* variables, not *System*. We'll see if this make a difference...

## Who uses it?

Any class involving Java programming.

## What changes from a default installation are made?

- In order to stop all the exe's that are in the included java\bin directory from shim-ing, I had to create a bunch of ignore files - you can do this programmatically like so:
> $files = get-childitem $installDir -include *.exe -recurse
>
> foreach ($file in $files) {
>  #generate an ignore file
>  New-Item "$file.ignore" -type file -force | 
> Out-Null
> }

(see more about shims here: https://chocolatey.org/docs/create-packages#how-do-i-exclude-executables-from-getting-shims)

## Surprises & annoyances

- Meh

## If updating this software, is there anything I should know?

- No

## Misc

- Easy peasy. I just unzip, copy a folder, and hook up the shortcut.
- Libraries are a different matter. They're stored in `%userprofile%\documents\processing\libraries` … not a shared location, so each user has their own libraries. Could potentially push this off to H (or see if there's a way to create a shared library). Until I can see that this is going to be a regular thing (and not a one-shot), I'll let users install their own libraries - it takes less than 30 seconds (at least for the ones JK is currently requesting).


## Testing

### Testing files

- `stars.pde`

### Testing method

Confirm that you can compile from the CLI.

  - Open the test file and hit play - be amazed!