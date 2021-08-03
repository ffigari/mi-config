# mi-config

Utilidad para guardar cómodamente los cambios que vaya haciendo sin tener que
andar a las puteadas cada vez que cambio de máquina porque me había dicho
mintiéndome, esta vez sí me guardo el archivo ese con la opción rara.
Asume una instalación previa de la versión
[i3 de manjaro](https://www.manjaro.org/downloads/community/i3/)

## dotfiles

`./retrieve.sh` para traerlos al repo (habría que hacer un commit luego)  
`./deploy.sh` para copiarlos a la máquina

## paquetes

pacman:
```
firefox
gvim
fzf
the_silver_searcher
unzip
pkgfile
xclip
numlockx
```

[vim-plug](https://github.com/junegunn/vim-plug):
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

[oh-my-zsh](https://ohmyz.sh/):
```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## misc

- [
  instalar pulseaudio para que discord detecte los inputs y outputs de audio
](
  https://bbs.archlinux.org/viewtopic.php?id=250499
)
