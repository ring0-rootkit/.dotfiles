rm ~/.config/hypr/bindings.conf
rm ~/.config/hypr/input.conf
rm ~/.config/hypr/monitors.conf
rm ~/.config/hypr/looknfeel.conf
rm ~/.config/hypr/autostart.conf

rm ~/.config/waybar/style.css
rm ~/.config/waybar/config.jsonc

mkdir -p ~/.config/hypr/shaders ~/.config/systemd/user

ln -s $(pwd)/hypr/bindings.conf ~/.config/hypr/bindings.conf
ln -s $(pwd)/hypr/input.conf ~/.config/hypr/input.conf
ln -s $(pwd)/hypr/monitors.conf ~/.config/hypr/monitors.conf
ln -s $(pwd)/hypr/looknfeel.conf ~/.config/hypr/looknfeel.conf
ln -s $(pwd)/hypr/autostart.conf ~/.config/hypr/autostart.conf
ln -s $(pwd)/hypr/grayscale.sh ~/.config/hypr/grayscale.sh
ln -s $(pwd)/hypr/shaders/grayscale.frag ~/.config/hypr/shaders/grayscale.frag

ln -s $(pwd)/systemd/user/grayscale-on.service ~/.config/systemd/user/grayscale-on.service
ln -s $(pwd)/systemd/user/grayscale-on.timer ~/.config/systemd/user/grayscale-on.timer
ln -s $(pwd)/systemd/user/grayscale-off.service ~/.config/systemd/user/grayscale-off.service
ln -s $(pwd)/systemd/user/grayscale-off.timer ~/.config/systemd/user/grayscale-off.timer

systemctl --user daemon-reload
systemctl --user enable --now grayscale-on.timer grayscale-off.timer

ln -s $(pwd)/waybar/style.css ~/.config/waybar/style.css
ln -s $(pwd)/waybar/config.jsonc ~/.config/waybar/config.jsonc

ln -s $(pwd)/../.zshrc ~/.zshrc
ln -s $(pwd)/../.aliases ~/.aliases
ln -s $(pwd)/../.tmux.conf ~/.tmux.conf

chsh -s /usr/bin/zsh r0
