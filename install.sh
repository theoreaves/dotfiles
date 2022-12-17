#!/usr/bin/env sh

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -sf $DOTFILES/zsh/zshrc $HOME/.zshrc

rm -rf $HOME/.config/nvim
ln -s $DOTFILES/nvim $HOME/.config/nvim

ln -sf $DOTFILES/tmux/tmux.conf $HOME/.tmux.conf

#ln -sf $DOTFILES/git/gitconfig $HOME/.gitconfig

#ln -sf $DOTFILES/git/gitignore_global $HOME/.gitignore_global

mkdir -p $HOME/.local/bin

mkdir -p $HOME/.nvm
ln -sf $DOTFILES/nvm/default-packages $HOME/.nvm/default-packages

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    KEEP_ZSHRC=yes sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
