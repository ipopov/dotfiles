dotfiles
========

```
TMP=$(mktemp -d -t dotfiles.XXXXXXXXX) sudo apt install -y make && bash -c 'git clone https://github.com/ipopov/dotfiles.git $TMP && make -C $TMP install'
```
