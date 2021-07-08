# jetbrains-toolbox-install

This is an installer for the [JetBrains Toolbox App](https://www.jetbrains.com/toolbox-app/). It is the vendor recommended tool to install JetBrains products. See [Install using the Toolbox App](https://www.jetbrains.com/help/idea/installation-guide.html#toolbox) for more information.

## How it works

This installer automates the following steps:

1. Download the latest tarball `.tar.gz` from the Toolbox App web page.
2. Extract the tarball to the recommended `/opt/jetbrains-toolbox` directory
3. Creates a symbolic link in the `/usr/local/bin` directory

## Usage

Run the following command to get started with Toolbox. This command requires that you have `sudo` privileges and `curl`.  
`curl -fsSL https://raw.githubusercontent.com/nagygergo/jetbrains-toolbox-install/master/jetbrains-toolbox.sh | bash`

Alternatively, you can download the `jetbrains-toolbox.sh` file on this repository. It will still require `sudo` privileges to install.

Afterwards you may execute the `jetbrains-toolbox` binary to run the Toolbox App and select which product and version you want to install.

## Contributors

 - Gergely Nagy (@nagygergo)
 - @eightseventhreethree
 - Daniel Ziegenberg (@ziegenberg)
 - Adam Tunnic (@Doregon)


