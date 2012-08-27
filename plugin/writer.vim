" Writer.vim - Distraction free writing environment for Vim. Huzzah!
" Maintainer:   Nathan Long (www.nathan-long.com)
" Version:      0.3

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

let s:writer_theme = g:writer_theme

"Sets up Writer environment
fu! WriterInit()
  let &background = s:writer_theme
  colorscheme writer
  setlocal fuopt=background:Normal lines=999 columns=80 fullscreen spell nonumber
endfunction

"Opens a journal file in specified directory
fu! WriterJournal(arg)
  let s:today = strftime("%y%m%d")
  exe ':e' . g:writer_journal_dir . s:today . ".md"
  if a:arg == 'off'
    echo 'Journal opened. Writer off.'
  elseif a:arg == 'on'
    call WriterInit()
  endif
endfu

"Switch themes while in fullscreen mode
fu! WriterSwitch()
    let g:writer_background = &background
    if g:writer_background == 'dark'
        setlocal nofullscreen
        let &background = 'light'
        setlocal fullscreen
    else
        setlocal nofullscreen
        let &background = 'dark'
        setlocal fullscreen
    endif
endfu

"Exit fullscreen and source defaults
fu! WriterClose()
  setlocal nofullscreen
  so $MYVIMRC
  so $MYGVIMRC
endfu

map <leader>wr :call WriterInit()<CR>
map <leader>wj :call WriterJournal('on')<CR>
map <leader>wJ :call WriterJournal('off')<CR>
map <leader>wq :call WriterSwitch()<CR>
map <leader>wc :call WriterClose()<CR>
