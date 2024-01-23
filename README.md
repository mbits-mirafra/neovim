# Neovim 
This project seeks to arrange and align different neovim editor plugins together to provide a _fast, seamless and feature-rich_ **IDE(Integrated Development Environment), for Design Verification**.

## Introduction:
_**Neovim is a hyperextensible Vim-based text editor that seeks to aggressively refactor Vim.**_

What makes it stand out is the extensive support it provides for <i>[third party plugins](https://github.com/topics/neovim-plugins)</i>. And it does so with the help of [Lua scripts](https://neovim.io/doc/user/lua.html).
This project consists of a custom configuration of NeoVim based on [LazyVim](https://www.lazyvim.org/) and contains LSP (Language Server Protocol) configuration files in compliance with the [best coding practices](https://github.com/muneebullashariff/best_coding_practices) for Design Verification. It contains all the features provided by LazyVim and more.

## Features:
### LazyVim:
<img src = "https://user-images.githubusercontent.com/292349/213446185-2db63fd5-8c84-459c-9f04-e286382d6e80.png" width = "50%" height = "50%">

Since this project makes use of LazyVim, it packs all the features provided by the same. <br>
⌨️ [Keymaps](https://www.lazyvim.org/keymaps) 
⚙️ [Settings](https://www.lazyvim.org/configuration) 
📦 [Plugins](https://www.lazyvim.org/plugins) <br>
Note: _[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) and [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) have been disabled by default._

### Custom features:
* 📜 [Alpha-nvim](https://github.com/goolord/alpha-nvim): Alpha provides nvim with a customized main menu page.
![image](https://github.com/mbits-mirafra/neovim/assets/67193041/fc6b2e7a-4557-40e6-8a83-bb5f038efb9b)
*  📂 [Pretty-fold](https://github.com/anuvyklack/pretty-fold.nvim) & [Fold-preview](https://github.com/anuvyklack/fold-preview.nvim):<br>
Pretty-fold supports foldtext customization.<img src = "https://github.com/Myron2812/nvim-installer/assets/67193041/135f5bb3-3130-4024-b5e8-1f79f633dc50"> <p align = "center">_Without pretty-fold_ </p> <br><img src = "https://github.com/Myron2812/nvim-installer/assets/67193041/61a20a6c-0396-4209-8317-51bf8e342fb4"> <p align = "center"> _With pretty-fold_ </p> <br>
Fold-preview allows you to preview closed folds, without opening them. <br> **How-to-use:** Click ``h`` on a fold to preview. <img src = "https://github.com/Myron2812/nvim-installer/assets/67193041/cfbd1db4-01f9-4867-a795-45d493993581">
* </> [Nvterm](https://github.com/NvChad/nvterm): Nvterm provides easy access to the terminal within nvim. This can act like a console for compiling and reviewing code side-by-side. It also works great with the leap plugin, making it considerably easier and faster to find keywords for a given console output. <br> Note: The working directory of the terminal will match the working directory at which nvim was called. _For example, if Nvim was called at ``Downloads`` the working directory of the terminal inside Nvim will also be ``Downloads``._ <br> **How-to-use:** <br>
``Esc`` takes you to normal mode. ``i`` takes you to terminal mode. <br>
``Alt+h`` for a horizontal terminal. <img src = "https://github.com/Myron2812/nvim-installer/assets/67193041/42ddd51e-e2a0-4237-8a9b-c5e261a08b3e"> <br>
``Alt+v`` for a vertical terminal. <img src = "https://github.com/Myron2812/nvim-installer/assets/67193041/77dec970-229e-4558-9fe2-b514de6d0849"> <br>
``Alt+f`` for a floating terminal. <img src = "https://github.com/Myron2812/nvim-installer/assets/67193041/cf2c0e94-8c15-4e1c-a904-ab60eabaa131">
* 🛢️[Oil](https://github.com/stevearc/oil.nvim): Oil is a file-explorer that lets you edit your filesystem like a normal Neovim-buffer. <br> **How-to-use:** <br> ``-`` to initialize Oil and/or to go to parent working directory of the file. <br> ``Ctrl+s`` for a vertical split. <br> ``Ctrl+h`` for a horizontal split. <br> ``Ctrl+p`` to preview a file. <br> ``Ctrl+l`` to refresh Oil. <br> ``gx`` to open the chosen file in an external app. <br> ``g.`` to show hidden files. <br> <img src = "https://github.com/Myron2812/nvim-installer/assets/67193041/58871458-1a4b-41e2-ae41-d10c88e8ef50">
* 🎨 Themes: An extensive list of common themes are made available. <br> **How-to-use:** ``Space`` ``u`` ``C`` to preview themes. <img src = "https://github.com/Myron2812/nvim-installer/assets/67193041/ecdbfa9a-5ebc-43e3-9e4c-66b6b0ebd90c"> <br> **Theme can be changed permanently in ``themes.lua`` which can be accessed from ``config`` from the main menu.**
## Installation Requirements:
### 1. Neovim
<img src ="https://raw.githubusercontent.com/neovim/neovim.github.io/master/logos/neovim-logo-300x87.png">

   #### Installation
   ⚠️ CHECK IF SHELL IS BASH OR CSH/TCSH
   ```bash
   echo $0
   ```
   ``/bin/csh`` : csh <br>
   ``tcsh`` : tcsh <br>
   ``/bin/bash`` : bash <br>
   _Open terminal and paste the following commands:_
   ```bash
   #FOR CSH/TCSH
   cd
   curl -LO https://github.com/neovim/neovim/releases/download/v0.9.5/nvim.appimage
   chmod u+x nvim.appimage
   mkdir bin
   mv nvim.appimage bin/

   #FOR BASH
   cd   #go to home directory
   curl -LO https://github.com/neovim/neovim/releases/download/v0.9.5/nvim.appimage   #download nvim
   chmod u+x nvim.appimage   #make nvim executable
   mkdir bin   #make a directory for binaries
   mv nvim.appimage bin/   #move nvim to the bin directory
   sudo apt install fuse   #to run
   ```
   _Open your shell configuration file:_
   ```bash
   #FOR CSH
   vim ~/.cshrc

   #FOR BASH
   vim ~/.bashrc

   #FOR TCSH
   vim ~/.tcshrc
   ```
   _Add these lines to the bottom of the file:_
   ```bash
   #FOR CSH/TCSH
   setenv PATH $PATH\:$HOME/bin
   alias nvim 'nvim.appimage'

   #FOR BASH
   export PATH=$PATH:$HOME/bin   #adds bin directory to PATH variable
   alias nvim="nvim.appimage"
   ```
   _Exit vim and source the changes:_
   ```bash
   #FOR CSH/TCSH
   source ~/.cshrc

   #FOR BASH
   source ~/.bashrc
   ```
### 2. Cargo
   <img src = "https://crates.io/assets/cargo.png" width = "10%" height = "10%"> <br>
   [svls](https://github.com/dalance/svls), [ripgrep](https://github.com/BurntSushi/ripgrep) require cargo. Cargo is the rust package manager.<br>
   #### Installation
   ```bash
   #check if cargo has been installed
   which cargo

   #DO NOT EXECUTE THE NEXT COMMAND IF CARGO HAS BEEN INSTALLED   
   curl https://sh.rustup.rs -sSf | sh
   ```
   #### Add cargo binaries to path
   ⚠️ CHECK IF SHELL IS BASH OR CSH/TCSH
   ```bash
   echo $0
   ```
   ``/bin/csh`` : csh <br>
   ``tcsh`` : tcsh <br>
   ``/bin/bash`` : bash <br>
   _Open your shell configuration file:_
   ```bash
   vim ~/.cshrc
   vim ~/.bashrc   #for bash
   vim ~/.tcshrc
   ```
   _Add this line at the bottom of the file:_
   ```bash
   #FOR CSH/TCSH
   setenv PATH $PATH\:$HOME/.cargo/bin

   #FOR BASH
   export PATH=$PATH:$HOME/.cargo/bin   #add cargo binaries directory to path
   ```
   _Exit vim and source the changes:_
   ```bash
   #FOR CSH/TCSH
   source ~/.cshrc

   #FOR BASH
   source ~/.bashrc
   ```
### 3. NerdFonts
   Nerd fonts are required for icons<br>
   <img src="https://github.com/mbits-mirafra/neovim/assets/67193041/28266af4-3bed-46bd-aa56-7e33b37b477e" width = "20%" height = "20%"> <br>
   _**Download the JetBrains font**: https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip_ <br>
   To install the Nerd font: <br>
   _WSL users, follow this guide: https://dev.to/ansonh/customize-beautify-your-windows-terminal-2022-edition-541l_ <br>
   _PuTTY users, follow this guide: https://linuxpip.org/increase-putty-font-size-tutorial/_ <br>
   _Fedora & Ubuntu users, follow this guide: https://itsfoss.com/change-terminal-font-ubuntu/_ <br>
   More fonts can be installed from https://www.nerdfonts.com/font-downloads
### 4. Ripgrep
   Ripgrep is used to search for a keyword in every file in a given working directory.
   <img src ="https://burntsushi.net/stuff/ripgrep1.png" width = "50%" height = "50%"> <br>
   _Install ripgrep via cargo:_
   ```bash
   cargo install ripgrep
   ```
### 5. Lazygit
   Lazygit is a Terminal User Interface for git commands. <br>
   <img src ="https://github.com/jesseduffield/lazygit/blob/assets/demo/commit_and_push-compressed.gif" width = "50%" height = "50%"> <br>
   _Install Lazygit:_
   ```bash
   cd
   curl -Lo lazygit.tar.gz https://github.com/jesseduffield/lazygit/releases/download/v0.40.2/lazygit_0.40.2_Linux_x86_64.tar.gz
   tar xf lazygit.tar.gz lazygit
   install lazygit ~/bin/
   ```
## Installation:
1. _**If nvim is already installed,** make a backup of your nvim files:_
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   mv ~/.local/share/nvim ~/.local/share/nvim.bak
   ```
2. _Download and setup nvim config:_
   ```bash
   cd
   git clone https://github.com/mbits-mirafra/neovim.git
   cp -r neovim/nvim ~/.config/
   ```
3. Launch nvim, enter command line mode(type ``:``) and type ``MasonInstall svls verible`` to install the SystemVerilog LSPs(Language Server Protocols).
![image](https://github.com/mbits-mirafra/neovim/assets/67193041/77e65275-a6dd-411f-b02a-293aa38eb8ba) <br>
⚠️ PLEASE WAIT FOR SVLS TO FINISH INSTALLING <br>
Note: The LSPs only get activated inside git repositories. If you do not wish to create a repository, you can add a dummy .git folder to your working directory.
6. The required LSP configurations for svls ``.svlint.toml`` and verible ``.rules.verible_lint`` are available in this repository. Copy and paste them to your working directory to enable them. For example:
   ```bash
   cd
   git clone https://github.com/mbits-mirafra/axi4_avip.git
   cp neovim/.rules.verible_lint neovim/.svlint.toml axi4_avip/
   ```
   Without ``.svlint.toml`` and ``.rules.verible_lint`` the LSPs will enable all lint rules:
   ![Screenshot from 2024-01-20 21-14-11](https://github.com/mbits-mirafra/neovim/assets/67193041/fd670228-797f-4f0b-b2f5-5e483d936230)
   With ``.svlint.toml`` and ``.rules.verible_lint``:
   ![image](https://github.com/mbits-mirafra/neovim/assets/67193041/7aeadaeb-a077-407b-a807-961fa3c49b1e)

