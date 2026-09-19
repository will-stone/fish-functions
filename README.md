# Fish Functions

My custom functions for the Fish Shell.

## Install

With [fisherman]

```
fisher install will-stone/fish-functions
```

## `c`

A Fish Shell alias to Visual Studio Code's `code` command, with the addition
that running `c` without parameters opens the current directory in VSCode.

### Usage

```sh
c # code .
c ./dir/dir # code ./dir/dir
```

## `ls`

Wraps `eza` to show hidden files and folders by default, and adds icons.

### Usage

```sh
ls # eza --all --group-directories-first --icons
```

## `v`

Shows versions for commonly installed items.

### Usage

```sh
v

fish     4.9.3          14ms  /opt/homebrew/bin/fish
node     24.21.0        31ms  /Users/usr/.local/share/vite-plus/bin/node
npm      12.0.2         89ms  /Users/usr/.local/share/vite-plus/bin/npm
npx      12.0.2         87ms  /Users/usr/.local/share/vite-plus/bin/npx
pnpm     12.4.2         28ms  /Users/usr/.local/share/vite-plus/bin/pnpm
yarn     4.18.0        158ms  /Users/usr/.local/share/vite-plus/bin/yarn
python3  3.9.6          19ms  /usr/bin/python3
ruby     2.6.10         17ms  /usr/bin/ruby

Total                  685ms
```

[fisherman]: https://github.com/jorgebucaran/fisher
