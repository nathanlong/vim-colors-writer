# Writer Colorscheme for Vim

Writer is a minimal colorscheme for Vim built to isolate your writing. It's
based off of two "distraction free" environments,
[WriteRoom](http://www.hogbaysoftware.com/products/writeroom) and
[IAWriter](http://www.iawriter.com/). Since I use Vim for everything involving
text I recreated these environments for myself. (If you do not use/care to
learn Vim, I'd recommend you check out both products.)

I've also <del>shamelessly copied</del> borrowed Ethan
Schoover's definition and variable structure from his [Solarized
theme](https://github.com/altercation/vim-colors-solarized) (Which I also highly
recommend).

## Installation

> Note: Writer was built with only [MacVim](http://code.google.com/p/macvim/)
> in mind. It will not work in the terminal, and I have not tested it on other
> Vim GUI wrappers. If you'd like support for your GUI wrapper, please contribute!

If you run Pathogen to manage your plugins, you can clone this into your
bundles folder:

    git clone git://github.com/nathanlong/vim-colors-writer.git
    ~/.vim/bundle/colors-writer

Or you can just download it and pop it into your `.vim/colors/` and
`.vim/plugins` directories.

## Commands

`<leader>wr` - Loads writer into your current buffer

`<leader>wj` - Creates a new dated journal file (format: YYMMDD.md) inside
your specified journal directory.

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

