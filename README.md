# mysh

环境配置

## install
```
cd ~
git clone --recursive https://github.com/ironzhang/mysh.git
```

## install git
```
cd ~; ln -s ~/mysh/git/gitconfig .gitconfig
```

## install tmux
```
cd ~; ln -s ~/mysh/tmux/tmux.conf .tmux.conf
```

## install zsh
```
cd ~
echo "source ~/mysh/zsh/zsh.rc" >>.zshrc
```

## install vim
```
cd ~/mysh/vim/bundle/YouCompleteMe; ./install.py --clang-completer --go-completer; cd ~
ln -s ~/mysh/vim .vim
```

