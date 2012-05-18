# To Install

(Re)move ~/.vim and ~/.vimrc if you have them already, and run:

    # clone this repo
    git clone git@github.com:dlikhten/vim-config.git ~/.vim
    cd ~/.vim
    git submodule update --init
    ln -s ~/.vim/vimrc ~/.vimrc


# Updating

As long as your checkout is kept clean, you can easily update, rebase your local changes and update submodules with:

    cd ~/.vim && git pull --rebase ; git submodule update ; cd -
