user_name=lucien
is_install_vim=0

# install softwares
sudo apt-get update
sudo apt-get install -y zsh tmux sudo git ack-grep ctags

# mkdir necessary dirs
mkdir /home/$user_name/bin /home/$user_name/download /home/$user_name/softwares /home/$user_name/workspace /home/$user_name/demo

# zsh install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i "s/USER_NAME/${user_name}/g" .zshrc
cp .zshrc /home/$user_name

# tmux install
cp .tmux.conf /home/$user_name/
cp tmux.sh /home/$user_name/bin

# vim install
# install vim 8.0
if [ "$is_install_vim" -eq "1" ]; then
  sudo add-apt-repository ppa:jonathonf/vim
  sudo apt update
  sudo apt install vim
fi
cp -r .vim_runtime /home/$user_name/
bash /home/$user_name/.vim_runtime/install_awesome_vimrc.sh
mkdir -p ~/.config
cp -r flake8 ~/.config

# pbcopy install
bash pbcopy.sh

# anaconda install
wget https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh -P /home/$user_name/download/
bash /home/$user_name/download/Anaconda3-5.2.0-Linux-x86_64.sh

# generate ssh pub key
ssh-keygen
