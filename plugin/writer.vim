" Writer.vim - Distraction free writing environment for Vim. Huzzah!
" Maintainer:   Nathan Long (www.nathan-long.com)
" Version:      0.41

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

"Tracks state, open or closed
let g:writer_state = 0

"Sets up Writer environment, check for fullscreen ask
fu! s:WriterInit(arg)
  let &background = s:writer_theme
  colorscheme writer
  if a:arg == 'off'
    setlocal fuopt=background:Normal lines=999 columns=95 spell showbreak=
  else
    setlocal fuopt=background:Normal lines=999 columns=95 fullscreen spell showbreak=
  endif
  au BufUnload <buffer> call <sid>WriterClose()
  let g:writer_state = 1
endfunction

"Opens a journal file in specified directory
fu! s:WriterJournal(arg)
  let s:today = strftime("%y%m%d")
  exe ':e' . g:writer_journal_dir . s:today . ".md"
  if a:arg == 'off'
    echo 'Journal opened. Writer off.'
  elseif a:arg == 'on'
    call <sid>WriterInit('on')
  endif
endfu

"Switch themes while in fullscreen mode
fu! s:WriterSwitch()
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
fu! s:WriterClose()
  setlocal nofullscreen
  let g:writer_state = 0
  so $MYVIMRC
  so $MYGVIMRC
endfu

fu! s:WriterToggle()
  if g:writer_state == 0
    call <sid>WriterInit('on')
  else
    call <sid>WriterClose()
  endif
endfu

command! WriterInit :call <sid>WriterInit('on')
command! WriterInitQuiet :call <sid>WriterInit('off')
command! WriterJournal :call <sid>WriterJournal('on')
command! WriterJournalOff :call <sid>WriterJournal('off')
command! WriterSwitchThemes :call <sid>WriterSwitch()
command! WriterExit :call <sid>WriterClose()
command! WriterToggle :call <sid>WriterToggle()

if !hasmapto(':WriterInitOn<CR>')
  map <leader>we :WriterInit<CR>
endif

if !hasmapto(':WriterInitOff<CR>')
  map <leader>wE :WriterInitQuiet<CR>
endif

if !hasmapto(':WriterJournalOn<CR>')
  map <leader>wj :WriterJournal<CR>
endif

if !hasmapto(':WriterJournalOff<CR>')
  map <leader>wJ :WriterJournalOff<CR>
endif

if !hasmapto(':WriterSwitchThemes<CR>')
  map <leader>wq :WriterSwitchThemes<CR>
endif

if !hasmapto(':WriterExit<CR>')
  map <leader>wc :WriterExit<CR>
endif

if !hasmapto(':WriterToggle<CR>')
  map <leader>wr :WriterToggle<CR>
endif
