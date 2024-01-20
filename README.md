# Neovim 
This projects seeks to arrange and align different nvim editor plugins together to provide a _fast, seamless and feature-rich_ **IDE(Integrated Desktop Environment) for Design Verification**.

## Introduction:
_**Neovim is a hyperextensible Vim-based text editor that seeks to aggressively refactor Vim.**_

What makes it stand out is the extensive support it provides for <i>[third party plugins](https://github.com/topics/neovim-plugins)</i>. And it does so with the help of [Lua scripts](https://neovim.io/doc/user/lua.html).
This project consists of a custom configuration of NeoVim based on [LazyVim](https://www.lazyvim.org/) and contains LSP (Language Server Protocol) configuration files in compliance with the [best coding practices](https://github.com/muneebullashariff/best_coding_practices) for Design Verification. It contains all the features provided LazyVim and more.

## Features:
### Customized features:
* 📜 [Alpha-nvim](https://github.com/goolord/alpha-nvim): Alpha provides nvim with a customized main menu page.
![image](https://github.com/Myron2812/nvim-installer/assets/67193041/2553fdf2-ec83-4458-a040-e603a21e3532)
*  📂 [Pretty-fold](https://github.com/anuvyklack/pretty-fold.nvim) & [Fold-preview](https://github.com/anuvyklack/fold-preview.nvim):<br>
Pretty-fold supports foldtext customization.<img src = "https://github.com/Myron2812/nvim-installer/assets/67193041/135f5bb3-3130-4024-b5e8-1f79f633dc50"> <p align = "center">_Without pretty-fold_ </p> <br><img src = "https://github.com/Myron2812/nvim-installer/assets/67193041/61a20a6c-0396-4209-8317-51bf8e342fb4"> <p align = "center"> _With pretty-fold_ </p> <br>
Fold-preview allows you to preview closed folds, without opening them. <br> **How-to-use:** Click ``h`` on a fold to preview. <img src = "https://github.com/Myron2812/nvim-installer/assets/67193041/cfbd1db4-01f9-4867-a795-45d493993581">
* </> [Nvterm](https://github.com/NvChad/nvterm): Nvterm provides easy access to the terminal within nvim. This can act like a console for compiling and reviewing code side-by-side. It also works great with the leap plugin, making it considerably easier and faster to find keywords for a given console output. <br> Note: The working directory of the terminal will match the working directory at which nvim was called. _For example, if Nvim was called at ``Downloads`` the working directory of the terminal inside Nvim will also be ``Downloads``._ <br> **How-to-use:** <br>
``Esc`` takes you to normal mode. ``i`` takes you to terminal mode. <br>
``Alt+h`` for a horizontal terminal. <img src = "https://github.com/Myron2812/nvim-installer/assets/67193041/42ddd51e-e2a0-4237-8a9b-c5e261a08b3e"> <br>
``Alt+v`` for a vertical terminal. <img src = "https://github.com/Myron2812/nvim-installer/assets/67193041/77dec970-229e-4558-9fe2-b514de6d0849"> <br>
``Alt+f`` for a floating terminal. <img src = "https://github.com/Myron2812/nvim-installer/assets/67193041/cf2c0e94-8c15-4e1c-a904-ab60eabaa131">
* 🛢️[Oil](https://github.com/stevearc/oil.nvim): Oil is a file-explorer that lets you edit your filesystem like a normal Neovim-buffer. <br> **How-to-use:** <br> ``-`` to initialize Oil and/or to go to parent working directory of the file. <br> ``Ctrl+s`` for a vertical split. <br> ``Ctrl+h`` for a horizontal split. <br> ``Ctrl+p`` to preview a file. <br> ``Ctrl+l`` to refresh Oil. <br> ``gx`` to open the chosen file in an external app. <br> ``g.`` to show hidden files. <br> <img src = "https://github.com/Myron2812/nvim-installer/assets/67193041/58871458-1a4b-41e2-ae41-d10c88e8ef50">
* 🎨 Themes: An extensive list of common themes are made available. <br> **How-to-use:** ``Space`` ``u`` ``C`` to preview themes. <img src = "https://github.com/Myron2812/nvim-installer/assets/67193041/ecdbfa9a-5ebc-43e3-9e4c-66b6b0ebd90c"> <br> Theme can be changed permanently in ``themes.lua`` which can be accessed from config from the main menu.
## Installation:
1. Download and install [neovim](https://github.com/neovim/neovim/releases/). <br>
   You can either install the tarballs and then assign alias or path variables, or, use your Linux distribution's package manager to install(apt for Ubuntu, dnf for Fedora). <br>
   ⚠️ **WARNING:** _Neovim installed must version 0.8 or higher._
3. Download and install cargo to enable svls(one of the two LSPs):
   ```bash
   curl https://sh.rustup.rs -sSf | sh
   ```
   ⚠️ **Note:** _If curl does not work, install using package manager._
4. Nerd fonts to recognize icons(emojis). <br> Download and install the following font: [JetBrains](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip)  <br>
To use the font, it must be set in your terminal's preferences.
More fonts can be downloaded from [NerdFonts](https://www.nerdfonts.com/font-downloads).<br>
5. **If nvim is already installed,** make a backup of your nvim files:
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   mv ~/.local/share/nvim ~/.local/share/nvim.bak
   ```
6. Clone this repository and move the ``nvim`` folder to your ``~/.config/`` folder if on Linux and ``$HOME\AppData\Local\`` if on Windows.
7. Launch nvim and run ``:MasonInstall svls verible`` to install the SystemVerilog LSPs(Language Server Protocols).
8. Activate the LSPs by adding a ``.git`` folder inside your project folder (if the folder already has a .git folder, skip this step)
9. Enable the required configuration for the LSPs by adding the ``.svlint.toml`` and ``.rules.verible_lint`` files in this repository to your project folder.

