# dzo.vim

A dark colourscheme for Vim based on a custom pallette. It aims to be selective
in its use of color and contrast. Compared to other themes it doesn't pack your
editor full of a full spectrum of colors.

![Color Palette](http://i.imgur.com/xvltx46.png)

![Sample Code](http://i.imgur.com/TWZLGt4.png)

If you like the look and feel, but its not quite there, note that it
shares some colors with vim-hybrid:

-	[vim-hybrid](https://github.com/w0ng/vim-hybrid)

Which is, in turn, built on top of:

-	[Tomorrow-Night](https://github.com/chriskempson/vim-tomorrow-theme)'s pallete.
-	[Jellybeans](https://github.com/nanotech/jellybeans.vim)' syntax group highlighting.
-	[Solarized](https://github.com/altercation/vim-colors-solarized)'s vimscript.

## Requirements

-   gVim 7.3+ on Linux, Mac and Windows.
-   Vim 7.3+ on Linux and Mac, using a terminal that supports 256 colours.

## Installation

### Terminal Colors

Due to the limited 256 terminal color palette, the gVim colors cannot be used
directly in vim. In order to use the theme's palette in the terminal the colors
must be added to your `~/.Xresources` file or other terminal specific
configuration.

`.Xresources`:
```
! vim-dzo colors
*background: #1A1A1A
*foreground: #EEEEEF
! black
*color0: #1A1A1A
*color8: #373B41
! red
*color1: #A54242
*color9: #CC6666
! green
*color2: #99cf50
*color10: #8bb664
! yellow
*color3: #FDAF87
*color11: #DDA790
! blue
*color4: #5F819D
*color12: #81A2BE
! magenta
*color5: #85678F
*color13: #B294BB
! cyan
*color6: #005577
*color14: #89BDFF
! white
*color7: #707880
*color15: #C5C8C6
```

For other users pre-made configuration files will be added in the future. Please feel free to submit your own.

### Vim Theme

1.  Copy colors/dzo.vim to:

    ```
    ~/.vim/colors/dzo.vim
    ```

    or alternatively, use a plugin manger such as
    [vim-plug](https://github.com/junegunn/vim-plug),
    [NeoBundle](https://github.com/Shougo/neobundle.vim),
    [Vundle](https://github.com/gmarik/Vundle.vim), or
    [Pathogen](https://github.com/tpope/vim-pathogen).

2.  Add to ~/.vimrc:

    ```vim
    colorscheme dzo
    ```

## Screenshots

![syntax.txt](http://i.imgur.com/f0AVcKU.png)

![diff](http://i.imgur.com/g54PqLM.png)

![spellcheck](http://i.imgur.com/vzbf0L6.png)


