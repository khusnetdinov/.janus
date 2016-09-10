# .Janus

Vim files for customization janus distribution.

## Pre-requisites

You need install [Janus distribution](https://github.com/carlhuda/janus) of Vim.

Also this distribution requires `jq`.

## Installation

To install .janus files to home director please use installing script
witch safely install all plugins and link rc files without touching any
Vim and Janus files.

```bash
$ curl -L http://bit.ly/2bTpEk4 | bash
```
# More languages:

 - EcmaScript 7
 - Jsx
 - Elm

# More tools:

Additional plugins are included to this distribution.

## [Abolish](https://github.com/tpope/vim-abolish)

The abolish plugin provides a command called `:Subvert`, which is like a supercharged version of Vim’s built-in `:substitute` command. The `:Subvert` command is especially useful for changing singular and plural variants of a word, and for refactoring names that appear in snake_case and MixedCase.

## [Airline](https://github.com/vim-airline/vim-airline)

Changes you status line. Possible to install [themes](https://github.com/vim-airline/vim-airline-themes). Integrated with other plugins, such as Fugutive, CtrlP and others.

![img](https://github.com/vim-airline/vim-airline/wiki/screenshots/demo.gif)

## [DelimiMate](https://github.com/Raimondi/delimitMate)

This plug-in provides automatic closing of quotes, parenthesis, brackets, etc., besides some other related features that should make your time in insert mode a little bit easier, like syntax awareness (will not insert the closing delimiter in comments and other configurable regions), and expansions (off by default), and some more.

## [Indent guides](https://github.com/nathanaelkane/vim-indent-guides)

Indent Guides is a plugin for visually displaying indent levels in Vim.

<img src="http://i.imgur.com/ONgoj.png" width="448" height="400" alt="" />

## [Emmet](https://github.com/mattn/emmet-vim)
Vim plug-in which provides support for expanding abbreviations similar to [emmet](http://emmet.io/).

![](https://raw.githubusercontent.com/mattn/emmet-vim/master/doc/screenshot.gif)

## [Elixir Mix](https://github.com/mattreduce/vim-mix)

Plugin for using Elixir's build tool, `mix`.

## [Ruby block object](https://github.com/nelstrom/vim-textobj-rubyblock)

When plugin is installed you will gain two new text objects, which are triggered by `ar` and `ir` respectively. These follow Vim convention, so that `ar` selects _all_ of a _ruby block_, and `ir` selects the _inner portion_ of a _rubyblock_.
