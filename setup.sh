# mkdir necessary dirs
mkdir ~/bin ~/download ~/softwares ~/workspace ~/demo

# zsh install
sudo apt-get update
sudo apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp .zshrc ~/

# tmux install
sudo apt-get install -y tmux
cp .tmux.conf ~/
cp tmux.sh ~/bin

# vim install
cp -r .vim_runtime ~/
bash ~/.vim_runtime/install_awesome_vimerc.sh

# pbcopy install
bash pbcopy.sh

# anaconda install
wget https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh ~/download
bash ~/download/Anaconda3-5.2.0-Linux-x86_64.sh

# generate ssh pub key
ssh-keygen
