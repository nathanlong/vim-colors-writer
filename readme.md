# Writer Colorscheme for Vim

This colorscheme was based off two "distraction free" environments,
[WriteRoom](http://www.hogbaysoftware.com/products/writeroom) and
[IAWriter](http://www.iawriter.com/). Since I use Vim for everything involving
text I recreated these environments for myself. I've also shamelessly copied
Ethan Schoover's definition and variable structure from his [Solarized
theme](https://github.com/altercation/vim-colors-solarized) (which is
a brilliant theme!).

At its core it's a highly minimal colorscheme with both a light and dark
version with a few small functions that make it easy to isolate your writing.


## Installation:

If you run Pathogen to manage your plugins, you can clone this into your
bundles folder:

    git clone git://github.com/nathanlong/vim-colors-writer.git ~/.vim/bundle/colors-writer

Or you can just download it and pop it into your `.vim/colors/` and
`.vim/plugins` directories.

## Features

I mostly use this to focus on what I'm writing or when I want to journal, so
there are a few ways to control Writer:

`<leader>wr` - Loads writer with your current buffer

`<leader>wj` - Creates a new dated journal file (format: YYMMDD.md) inside
your specified journal directory.

`<leader>wc` - Closes writer and reapplies your defaults

## Customization

I've included a few options for customization:

To customize your 'journal' directory, add this to your vimrc:

    let g:writer_journal_dir = 'path/to/journal/'

And to choose which theme to load on default:

    let g:writer_theme = dark

(The default is the light theme.)

## Switching Between the Two Themes On The Fly

Since this leans heavily on the innovations of Solarized, you can use
Solarized's built in background switching plugin to switch between the dark
(WriteRoom) and the light (IAWriter) themes.

If you don't have that plugin installed run:

    set bg=dark

For the dark scheme, and for the light:

    set bg=light

Thats it, hope you enjoy it!

---

**TODOS:**

- Allow custom writer function bindings.
- Add more support for more filetypes.
- Add more themes...?

