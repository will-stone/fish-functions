# Fish Functions

My custom functions for the Fish Shell.

## Install

With [fisherman](https://github.com/jorgebucaran/fisher)

```
fisher add will-stone/fish-functions
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

Wraps `ls` to show hidden files and folders by default.

### Usage

```sh
ls # ls -aG
```

## `v`

Shows versions for commonly installed items.

### Usage

```sh
v

go    1.10.2
node  10.8.0
npm   6.3.0
ruby  2.5.1
yarn  1.9.1
```
