# mysh

环境配置

## install
```
cd ~
git clone --recursive https://github.com/ironzhang/mysh.git
```

## setup git
```
cd ~; ln -s ~/mysh/git/gitconfig .gitconfig
```

## setup tmux
```
cd ~; ln -s ~/mysh/tmux/tmux.conf .tmux.conf
```

## setup zsh
```
cd ~
echo "source ~/mysh/zsh/zsh.rc" >>.zshrc
```

## setup vim
```
cd ~/mysh/vim/bundle/YouCompleteMe; ./install.py --clang-completer --go-completer; cd ~
ln -s ~/mysh/vim .vim
```

## setup neovim
```
mkdir ~/.config/
ln -s ~/mysh/nvim ~/.config/nvim

mkdir ~/.vim
cp -r ~/mysh/nvim/autoload ~/.vim/
```

