############################################################
### Run these commands on a clean installation of ubuntu ###
############################################################


# go to home directory
cd ~

# Update repositories and upgrade installed packages
sudo apt update
sudo apt -y upgrade

sudo apt -y install python3-pip python3-tk
# Install useful packages
sudo apt -y install p7zip-full # 7zip for unzipping files. (7z e FILENAME)
sudo apt -y install ncdu # For viewing filesizes nicely
sudo apt -y install tmate # For sharing terminal session
sudo apt -y install cmake # useful for makefiles. Needed to install YouCompleteMe
sudo apt -y install mono-complete golang-go nodejs # Needed to install YouCompleteMe
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
git clone https://github.com/chausies/configs.git
sh ~/configs/RUN_THIS.sh

# Get vim configs from my git and install the various plugins specified
# there
cd ~/
git clone https://github.com/chausies/.vim.git
sh ~/.vim/RUN_THIS.sh


# Install octave and relevant packages
sudo apt -y install octave octave-optim
