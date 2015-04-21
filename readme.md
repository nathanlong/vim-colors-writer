# Writer Colorscheme for Vim

This is a minimal distraction-free theme for writing in Vim. There are many like it, but this one is mine.

There's a light mode that's reminicent of [IAWriter](http://www.iawriter.com/) for use in bright environments and a dark theme similiar to [WriteRoom](http://www.hogbaysoftware.com/products/writeroom) for dark environments.

I built this specifically for use in MacVim and it works best with [Tim Pope's Markdown Syntax](https://github.com/tpope/vim-markdown) or [my fork of it](https://github.com/nathanlong/vim-markdown).

## Installation

The best way to install is with a plugin manager like [Vundle](https://github.com/gmarik/Vundle.vim) or [Pathogen](https://github.com/tpope/vim-pathogen).

### Vundle:

```vim
" Add to .vimrc
Plugin 'nathanlong/vim-colors-writer'
```

### Pathogen:
```bash
git clone https://github.com/nathanlong/vim-colors-writer.git ~/.vim/bundle/colors-writer
```

### Manual:

I'd really suggest using a plugin manager, but if you roll your Vim manually clone the repo and split the files into their respetive directories (colors/writer.vim -> .vim/colors/writer.vim and so on).

## Default Commands

I've built some simple commands into the plugin, all of these can be remapped:

| Map | Description |
|:--- |:----------- |
| `<leader>wr` | Toggles writer on and off in fullscreen mode. |
| `<leader>wR` | Loads writer into your current buffer with no fullscreen |
| `<leader>wj` | Creates a new dated journal file (format: YYMMDD.md) in your specified journal directory. |
| `<leader>wJ` | Creates a new dated journal file (format: YYMMDD.md) but does not launch writer. |
| `<leader>wq` | Switches between dark and light themes while in fullscreen mode |
| `<leader>wc` | Closes writer and reapplies your defaults |
| `<leader>wp` | Toggle between hard and soft text wrapping. |

## Customization

There are three options you can place in your `.vimrc` to control default behavior:

| Setting | Description | Default |
|:--------|:------------|:--------|
| `g:writer_journal_dir` | Controls where the journal function saves files. Accepts a path. | `$HOME` |
| `g:writer_theme`       | Choose which theme to load by default. Accepts 'light' or 'dark' | 'light' |
| `g:writer_wrap`        | Picks hard wrap (forces line breaks) or soft wrap (no breaks) | 'hard' |

Example usage:

```vim
let g:writer_theme = 'dark'
```
