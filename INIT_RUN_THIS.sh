############################################################
### Run these commands on a clean installation of ubuntu ###
############################################################


# go to home directory
cd ~
# Make temp directory if not already there
mkdir -p temp

# Update repositories and upgrade installed packages
sudo apt update
sudo apt -y upgrade

sudo apt -y install python3-pip
# Needed for matplotlib
sudo apt -y install python3-tk python3-gi-cairo
# Install useful packages
sudo apt -y install p7zip-full # 7zip for unzipping files. (7z e FILENAME)
sudo apt -y install ncdu # For viewing filesizes nicely
sudo apt -y install tmate # For sharing terminal session
sudo apt -y install cmake # useful for makefiles. Needed to install YouCompleteMe
sudo apt -y install mono-complete golang-go nodejs npm # Needed to install YouCompleteMe
sudo apt -y install ffmpeg # important for a lot of video/image/audio things

# Update pip
sudo -H pip3 install -U --upgrade pip
# Install important python packages
sudo -H pip3 install -U --upgrade matplotlib scipy
sudo -H pip3 install -U --upgrade scikit-learn
sudo -H pip3 install -U --upgrade pydot Pygments
# Install other python packages
sudo -H pip3 install -U --upgrade cvxpy tqdm youtube-dl
sudo -H pip3 install -U --upgrade Cython


# Install LaTeX stuff (like pdflatex command)
sudo apt -y install texlive-full

# Get custom configs
cd ~
# git clone https://github.com/chausies/myconfigs.git
sh ~/myconfigs/RUN_THIS.sh

# Setup vim things
# Remove old vim and install version with everything
sudo apt -y purge vim
sudo apt-get -y install vim-gtk3
# MAKE SURE THAT `vim --version` has `+python3` and `+xterm_clipboard`
# in it, else vim wasn't removed fully. You may need to run things like 
# `sudo apt-get remove OTHER_VIM_DISTRO`

# Get vim configs from my git and install the various plugins specified
# there
cd ~/
git clone https://github.com/chausies/.vim.git
sh ~/.vim/RUN_THIS.sh


# Install octave and relevant packages
sudo apt -y install octave octave-optim
