Installation
============


From a Release Package
----------------------

You can install a released package:

1. Download a zip or tar.gz package from the [releases page](https://github.com/npryce/adr-tools/releases)
2. Unzip / untar the package
3. Add the 'src/' subdirectory to your PATH


From Git
--------

You can install with Git, if you want to be on the bleeding edge:

1. Clone this repository
2. Add the `src/` subdirectory to your PATH.


Windows 10
----------

### Git for Windows: git bash

When using git bash within [Git for Windows](https://git-for-windows.github.io/), the scripts can simply be put in `usr\bin` in the installation directory. That directory usually is `C:\Program Files\Git\usr\bin`.   Pottery expects to run in a standard POSIX environment, so you must also install `more` or set the `PAGER` environment variable to `less`.

1. Download a zip package from the [releases page](https://github.com/npryce/pottery/releases)
2. Unzip the package
3. Copy everything from `src/` into `C:\Program Files\Git\usr\bin`

### Linux subsystem

The scripts work in the Bash on [Ubuntu on Windows](https://www.microsoft.com/store/p/ubuntu/9nblggh4msv6), the Linux-subsystem that officially supports Linux command line tools.
Make sure that you have [installed](https://msdn.microsoft.com/en-us/commandline/wsl/install_guide) the Linux-subsystem, run `bash` on the command line and follow the instructions in the "From a Release Package" section above.
