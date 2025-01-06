#!/bin/bash

cp .gitconfig ~

# ~Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# ~install zellij
cargo install --locked zellij

# install lsd
cargo install lsd

# ~Manually install NeoVim
mkdir -p ~/.local
cd ~/.local
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
mkdir ~/.local/bin
ln -s ~/.local/squashfs-root/AppRun ~/.local/bin/nvim

# Bring in our custom neovim config
echo "XDG_CONFIG_HOME=$HOME" >> ~/.profile
mkdir ~/.config/nvim
cp -r ~/dotfiles/nvim/.config/nvim/* ~/.config/nvim

# Get Neovim mostly ready to go
cd /workspaces/$RepositoryName
# poetry run pip install pynvim ipython  # Avoid if we can help it
# poetry run nvim --headless +":UpdateRemotePlugins" +"q!"

# Configure zsh as default
sudo chsh "$(id -un)" --shell "/usr/bin/zsh"
cp ~/dotfiles/zsh/* ~/
cp ~/dotfiles/zimfw/* ~/

# Setup git completions for bash
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
echo "source ~/.git-completion.bash" >> ~/.bashrc

# install go
tar -C /usr/local -xzf go1.23.4.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin



# Lazygit
git clone https://github.com/jesseduffield/lazygit.git lazygit-tmp
cd lazygit-tmp
go install
cd ..
rm -rf lazygit-tmp