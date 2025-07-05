wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip
wget https://dtinth.github.io/comic-mono-font/ComicMono.ttf
mkdir ~/.local/share/fonts 
mkdir ~/.local/share/fonts/JetBrains
mkdir ~/.local/share/fonts/ComicMono
cp ./ComicMono.ttf ~/.local/share/fonts/ComicMono/
unzip JetBrainsMono.zip -d ~/.local/share/fonts/JetBrains
rm JetBrainsMono.zip
rm ComicMono.ttf
