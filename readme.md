# Writer Colorscheme for Vim

Writer is a minimal colorscheme for Vim built to isolate your writing. It's
based off of two "distraction free" environments,
[WriteRoom](http://www.hogbaysoftware.com/products/writeroom) and
[IAWriter](http://www.iawriter.com/). Since I use Vim for everything involving
text I recreated these environments for myself. (If you do not use/care to
learn Vim, I'd recommend you check out both products.)

This theme is built to be highly compatible with (and is based on) the
[Solarized theme](https://github.com/altercation/vim-colors-solarized) and
benefits greatly from the light/dark background toggle included with that
theme.

This theme was built for use with [MacVim](http://code.google.com/p/macvim/).
I cannot guarantee it's compatibility in other platforms.

There is a branch for Powerline users, but I have discontinued updating it.

## Installation

**Option 1:** Manual

    git clone git@github.com:nathanlong/vim-colors-writer.git
    mv vim-colors-writer ~/vim/colors/

**Option 2:** Using Pathogen and git submodules (Recommended):

    git submodule add git@github.com:nathanlong/vim-colors-writer.git ~/.vim/bundle/colors-writer

## Commands

`<leader>wr` - Loads writer into your current buffer and isolates text.

`<leader>wR` - Loads writer into your current buffer with no fullscreen

`<leader>wj` - Creates a new dated journal file (format: YYMMDD.md) in
your specified journal directory.

`<leader>wJ` - Creates a new dated journal file (format: YYMMDD.md) but does
not launch writer.

`<leader>wq` - Switches between dark and light themes while in fullscreen mode

`<leader>wc` - Closes writer and reapplies your defaults

## Customization

I've also included a few options for customization:

To customize your 'journal' directory, add this to your vimrc:

    let g:writer_journal_dir = 'path/to/journal/'

And to choose which theme to load on default:

    let g:writer_theme = dark

(The default is the light theme.)

---

**TODOS:**

- Allow custom writer function bindings.
- Add more support for more filetypes.
- Add more themes...?

