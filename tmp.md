
Quick setup — if you’ve done this kind of thing before
or	
https://github.com/kktt007/dotfiles.git
Get started by creating a new file or uploading an existing file. We recommend every repository include a README, LICENSE, and .gitignore.

…or create a new repository on the command line
echo "# dotfiles" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/kktt007/dotfiles.git
git push -u origin main
…or push an existing repository from the command line
git remote add origin https://github.com/kktt007/dotfiles.git
git branch -M main
git push -u origin main

--

cd ~
mkdir kktt007
cd kktt007/

# i3

cp configuration/dotfile/.config/i3/config ~/.config/i3/config

~/.config/picom/picom.conf

git clone https://github.com/dracula/rofi
cp rofi/theme/config1.rasi ~/.config/rofi/config.rasi

# alacritty
$HOME/.config/alacritty/alacritty.yml

# polybar
[Home · polybar/polybar Wiki](https://github.com/polybar/polybar/wiki)
[i3-polybar-config/polybar at master · nicomazz/i3-polybar-config](https://github.com/nicomazz/i3-polybar-config/tree/master/polybar)

[i3-polybar-config/config at master · nicomazz/i3-polybar-config](https://github.com/nicomazz/i3-polybar-config/blob/master/i3/15inch4k/config)
exec_always --no-startup-id $HOME/.config/polybar/launch.sh  这个不适合我的屏幕

