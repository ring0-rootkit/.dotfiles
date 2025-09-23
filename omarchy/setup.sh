rm ~/.config/hypr/bindings.conf
rm ~/.config/hypr/input.conf
ln -s $(pwd)/hypr/bindings.conf ~/.config/hypr/bindings.conf
ln -s $(pwd)/hypr/input.conf ~/.config/hypr/input.conf

ln -s $(pwd)/../.zshrc ~/.zshrc
ln -s $(pwd)/../.aliases ~/.aliases

chsh -s /usr/bin/zsh r0
