############################################################
### Run these commands on a clean installation of ubuntu ###
############################################################


# go to home directory
cd ~

# Update repositories and upgrade installed packages
sudo apt update
sudo apt -y upgrade

sudo apt -y install python3-pip
# Install useful packages
sudo apt -y install dtrx # Do the right Xtraction (for unzipping files)
sudo apt -y install ncdu # For viewing filesizes nicely
sudo apt -y install tmate # For sharing terminal session
sudo apt -y install cmake # useful for makefiles. Needed to install YouCompleteMe
sudo apt -y install ffmpeg # important for a lot of video/image/audio things

# Update pip
sudo -H pip3 install --upgrade pip
# Install important python packages
sudo -H pip3 install -U --upgrade matplotlib scipy
sudo -H pip3 install -U --upgrade scikit-learn
sudo -H pip3 install -U --upgrade pydot
# Install other python packages
sudo -H pip install -U --upgrade cvxpy tqdm youtube-dl
sudo -H pip install -U --upgrade Cython


# Install LaTeX stuff (like pdflatex command)
sudo apt -y install texlive-full
sudo apt-get install python-pygments

# Get custom configs
cd ~
git clone https://github.com/chausies/configs.git
sh ~/configs/RUN_THIS.sh

# Setup vim things
# Remove old vim and install version with everything
sudo apt-get remove --purge vim
sudo apt-get install vim-gtk-py3
# MAKE SURE THAT `vim --version` has `+python` in it, else vim wasn't
# removed fully. You may need to run things like 
# `sudo apt-get remove OTHER_VIM_DISTRO`

# Get vim configs from my git and install the various plugins specified
# there
cd ~/
git clone https://github.com/chausies/.vim.git
sh ~/.vim/RUN_THIS.sh


# Install octave and relevant packages
sudo apt-get install octave octave-optim
