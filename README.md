# jetbrains-toolbox-install

This is an installer for the [JetBrains Toolbox App](https://www.jetbrains.com/toolbox-app/).

## How it works

This installer automates the following steps:

1. Download the latest AppImage release from the Toolbox App web page.
2. Extract the `jetbrains-toolbox` binary to `~/.local/share/JetBrains/Toolbox/bin`
3. Creates a symbolic link in the `~/.local/bin` directory

(Adding the shim directory to `PATH`, creating a `.desktop` entry and setting-up autostart is done automatically by Toolbox itself.)

## Usage

JetBrains Toolbox is packaged as an AppImage, which needs some system dependencies. Most modern Linux distros have them pre-installed, but if you encounter trouble, ensure you have the following: `libfuse2 libxi6 libxrender1 libxtst6 mesa-utils libfontconfig libgtk-3-bin tar`.

Run the following command to install JetBrains Toolbox. This command requires that you have `curl` and `wget`.  
`curl -fsSL https://raw.githubusercontent.com/nagygergo/jetbrains-toolbox-install/master/jetbrains-toolbox.sh | bash`

Alternatively, you can download the `jetbrains-toolbox.sh` file from this repository and run it.

Afterwards you may run the `jetbrains-toolbox` command and select which product and version you want to install. Installed IDEs will be available as commands in your `PATH`, eg. `pycharm`.

## Contributors

 - Gergely Nagy (@nagygergo)
 - @eightseventhreethree
 - Daniel Ziegenberg (@ziegenberg)
 - Adam Tunnic (@Doregon)
 - Jan Pokorný (@JanPokorny)
