# jetbrains-toolbox-install

This is an installer for the [JetBrains Toolbox App](https://www.jetbrains.com/toolbox-app/). It is the vendor recommended tool to install JetBrains products. See [Install using the Toolbox App](https://www.jetbrains.com/help/idea/installation-guide.html#toolbox) for more information.

## How it works

This installer automates the following steps:

1. Download the latest tarball `.tar.gz` from the Toolbox App web page.
2. Extract the tarball to the recommended `/opt/jetbrains-toolbox` directory
3. Creates a symbolic link in the `/usr/local/bin` directory

## Usage

Download `jetbrains-toolbox.sh` and run it. It requires sudo rigths to execute.

Afterwards you may execute the `jetbrains-toolbox` binary to run the Toolbox App and select which product and version you want to install.

## Contributors

 - Gergely Nagy (@nagygergo)
 - @eightseventhreethree
 - Daniel Ziegenberg (@ziegenberg)

