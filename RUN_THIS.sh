# Get .bashrc to source .mybashrc if it isn't already
if -Fxq "source ~/.mybashrc" ~/.bashrc
then
echo ".bashrc already sourcing .mybashrc"
else
cat <<EOT >> ~/.bashrc

# Run all the custom configs in .mybashrc
source ~/.mybashrc

EOT
fi

ln -s ~/configs/.inputrc ~/
ln -s ~/configs/.pythonrc ~/
ln -s ~/configs/.gitconfig ~/
