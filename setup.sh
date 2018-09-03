# install softwares
sudo apt-get update
sudo apt-get install -y zsh tmux sudo git ack-grep ctags

# mkdir necessary dirs
mkdir /home/$user_name/bin /home/$user_name/download /home/$user_name/softwares /home/$user_name/workspace /home/$user_name/demo

# zsh install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp .zshrc /home/$user_name

# tmux install
cp .tmux.conf /home/$user_name/
cp tmux.sh /home/$user_name/bin

# vim install
cp -r .vim_runtime /home/$user_name/
bash /home/$user_name/.vim_runtime/install_awesome_vimrc.sh

# pbcopy install
bash pbcopy.sh

# anaconda install
wget https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh -P /home/$user_name/download/
bash /home/$user_name/download/Anaconda3-5.2.0-Linux-x86_64.sh

# generate ssh pub key
ssh-keygen
