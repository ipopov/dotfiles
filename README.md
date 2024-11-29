dotfiles
========

```
sudo apt install -y make && TMP=$(mktemp -d -t dotfiles.XXXXXXXXX) bash -c 'git clone https://github.com/ipopov/dotfiles.git $TMP && make -C $TMP install'
```
