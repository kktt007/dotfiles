
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

---


[Manjaro - KDE - i3wm - PloyBar 使用配置全指南_LiuKairui的博客-程序员宅基地 - 程序员宅基地](https://www.cxyzjd.com/article/Liukairui/108060500#23_Polybarexample_1347)

搭框架,布局合理,这样对当下和以后都是高效的
一点点完成即可
安装的所有软件说明,软件的作用.
网址,markdown模式
统一安排成可用模式

[dotfiles | 程序员的自我修养](https://leohxj.gitbooks.io/a-programmer-prepares/content/software/mac/dotfiles.html)
[bardisty/dotfiles: dotfiles - Linux config files (beets, cmus, dunst, git, GnuPG, i3, mpv, ranger, rofi, sxhkd, X11, zsh)](https://github.com/bardisty/dotfiles)
[napcs/dotfiles: My dotfiles. Sharing is caring.](https://github.com/napcs/dotfiles)
[dikiaap/dotfiles: Get ready for dotfiles. Contains i3, i3blocks, rofi, dunst, picom, vim, tmux, and zsh.](https://github.com/dikiaap/dotfiles)
[da-edra/dotfiles: My Arch Linux config [i3-gaps + i3blocks + Zsh + Spacemacs + Rofi + Alacritty + Neofetch]](https://github.com/da-edra/dotfiles)
[jesusrp98/dotfiles: Public configuration files for my GNU+Linux setup.](https://github.com/jesusrp98/dotfiles)
[adi1090x/polybar-themes: A huge collection of polybar themes with different styles, colors and variants.](https://github.com/adi1090x/polybar-themes)

[Dotfiles - 超赞合集 awesome list chinese](https://asmcn.icopy.site/awesome/awesome-dotfiles/)

[realazy: 使用 Stow 管理 dotfiles](https://realazy.com/posts/2020-11-22-manage-dotfiles-with-stow.html)
cd ~/Dropbox/dotfiles
mkdir stow
echo '--target=~' > stow/.stowrc
stow stow -t ~
默认是父文件夹,要么就制定target是~

https://github.com/adi1090x/polybar-themes/tree/master/bitmap/shades/scripts