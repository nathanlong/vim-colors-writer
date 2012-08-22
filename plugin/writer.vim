" Writer.vim - Distraction free writing environment for Vim. Huzzah!
" Maintainer:   Nathan Long (www.nathan-long.com)
" Version:      0.2

"Plugin Variables
if !exists('g:writer_journal_dir')
  let g:writer_journal_dir = expand('$HOME')
else
  let g:writer_journal_dir = expand(g:writer_journal_dir)
endif

if !exists('g:writer_theme')
  let g:writer_theme = 'light'
else
  let g:writer_theme = expand(g:writer_theme)
endif

"Sets up Writer environment
fu! WriterInit()
  exe ':set background=' . g:writer_theme
  colorscheme writer
  setlocal fuopt=background:Normal lines=999 columns=80 fullscreen spell nonumber
endfunction

"Opens a journal file in specified directory
fu! WriterJournal()
  let s:today = strftime("%y%m%d")
  exe ':e' . g:writer_journal_dir . s:today . ".md"
  exe ':call WriterInit()'
endfu

"Exit fullscreen and source defaults
fu! WriterClose()
  setlocal nofullscreen
  so $MYVIMRC
  so $MYGVIMRC
endfu

map <leader>wr :call WriterInit()<CR>
map <leader>wj :call WriterJournal()<CR>
map <leader>wc :call WriterClose()<CR>
