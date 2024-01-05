# neovim
This project is created to arrange and align different nvim editor plugins to make the DesignVerification tasks faster. 
## Introduction:
This is a custom configuration of NeoVim based on [LazyVim](https://github.com/LazyVim/LazyVim). It contains all the default features of LazyVim and more.
## Features:
* 📜 [Alpha-nvim](https://github.com/goolord/alpha-nvim): Alpha provides nvim with a customized main menu page.
  ![image](https://github.com/Myron2812/nvim-installer/assets/67193041/cf47d401-8e7d-496a-93a1-9433bdc66a35)

## Installation:
1. Download and install [neovim](https://github.com/neovim/neovim/releases/).
2. Download and install cargo to enable svls(one of the two LSPs):
   ```bash
   curl https://sh.rustup.rs -sSf | sh
   ```
4. Nerd font for devicons. Download and install devicons from [NerdFonts](https://www.nerdfonts.com/font-downloads). <br>
([JetBrains](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip) is highly recommended.)<br>
Unzip and install all fonts.
5. If nvim is already installed, make a backup of your nvim files:
   
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   mv ~/.local/share/nvim ~/.local/share/nvim.bak
   ```
6. Copy the ``nvim`` folder to your ``~/.config/`` folder if on Linux and ``$HOME\AppData\Local\`` if on Windows.
7. Launch nvim and run ``:MasonInstall svls verible`` to install the SystemVerilog LSPs(Language Server Protocols).
8. Activate the LSPs by adding a ``.git`` folder inside your project folder (if the folder already has a .git folder, skip this step)
9. Enable the required configuration for the LSPs by adding the ``.svlint.toml`` and ``.rules.verible_lint`` files in this repository to your project folder.
