# To Install

(Re)move ~/.vim and ~/.vimrc if you have them already, and run:

    # clone this repo
    git clone git@github.com:dlikhten/vim-config.git ~/.vim
    cd ~/.vim
    git submodule update --init
    ln -s ~/.vim/vimrc ~/.vimrc

Compile YCM (no c-family support)

    brew install cmake

    cd ~
    mkdir ycm_build
    cd ycm_build
    cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/cpp
    make ycm_core


Configuration

    ln -s <path-to-repo> ~/.vim
    ln -s <path-to-repo> ~/.config/nvim
    brew install neovim


# Updating

As long as your checkout is kept clean, you can easily update, rebase your local changes and update submodules with:

    cd ~/.vim && git pull --rebase ; git submodule update ; cd -
