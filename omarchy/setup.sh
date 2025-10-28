rm ~/.config/hypr/bindings.conf
rm ~/.config/hypr/input.conf
rm ~/.config/hypr/monitors.conf
rm ~/.config/hypr/looknfeel.conf

rm ~/.config/waybar/style.css
rm ~/.config/waybar/config.jsonc

ln -s $(pwd)/hypr/bindings.conf ~/.config/hypr/bindings.conf
ln -s $(pwd)/hypr/input.conf ~/.config/hypr/input.conf
ln -s $(pwd)/hypr/monitors.conf ~/.config/hypr/monitors.conf
ln -s $(pwd)/hypr/looknfeel.conf ~/.config/hypr/looknfeel.conf

ln -s $(pwd)/waybar/style.css ~/.config/waybar/style.css
ln -s $(pwd)/waybar/config.jsonc ~/.config/waybar/config.jsonc

ln -s $(pwd)/../.zshrc ~/.zshrc
ln -s $(pwd)/../.aliases ~/.aliases
ln -s $(pwd)/../.tmux.conf ~/.tmux.conf

chsh -s /usr/bin/zsh r0
