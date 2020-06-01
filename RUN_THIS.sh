ln -s ~/myconfigs/.mybashrc ~/
ln -s ~/myconfigs/.inputrc ~/
ln -s ~/myconfigs/.pythonrc ~/
ln -s ~/myconfigs/.gitconfig ~/

# Get .bashrc to source .mybashrc if it isn't already
if grep -Fxq "source ~/.mybashrc" ~/.bashrc
then
echo ".bashrc already sourcing .mybashrc"
else
cat <<EOT >> ~/.bashrc

# Run all the custom configs in .mybashrc
source ~/.mybashrc

EOT
fi
