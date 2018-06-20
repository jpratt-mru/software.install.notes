# JDK8

## Version history

| semester | version |
| ---      | ---     |
| Fall 2018 | 8u172 [32-bit] |
| Fall 2017 | 8u144 [32-bit] |
| Fall 2016 | 8u92 |
| Fall 2015 | 8u60 |
| Fall 2014 | 8u11 |
| Winter 2014 | 7u45 |
| Fall 2013 | 7u25 |
| Fall 2012 | 7u5 |

## Type of installation

Tweaked Chocolatey Gallery installer (https://chocolatey.org/packages/jdk8)

## What changes will a user notice after the install?

- The system's environment variables now has a JAVA_HOME, with a value of the path down to the JDK's install directory in Program Files (x86).
- The system's PATH variable has %JAVA_HOME%\bin appended to it.
  - note that this behaviour is somewhat different with "my" installs, which put things into the *User* variables, not *System*. We'll see if this make a difference...

## Who uses it?

Any class involving Java programming.

## What changes from a default installation are made?

- I tweaked the script from the Chocolatey Gallery by setting `$Forcei586 = $true` into all the parameter lists (it was `$false` before).

## Surprises & annoyances

- Meh

## If updating this software, is there anything I should know?

- No

## Misc

- When installed, if the user currently logged in (the one who did the install) tries to do anything in a CLI, it won't work - the registry tweaks that change the current user's environment variables (JAVA_HOME and PATH) haven't "stuck" yet - but if you log off and back in, things are good to go.

## Testing

### Testing files

- None needed

### Testing method

Confirm that you can compile from the CLI.

  - Open a command window.
  - Type `javac`.
    - You should get a whole bunch of output saying basically "hey - you didn't use javac correctly". If you get a "command not found" kind of error, things ain't working.