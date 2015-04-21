" Writer.vim - Distraction free writing environment for Vim. Huzzah!
" Maintainer:   Nathan Long (nathan-long.com)
" Version:      0.5

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

if !exists('g:writer_wrap')
  let g:writer_wrap = 'hard'
else
  let g:writer_wrap = expand(g:writer_wrap)
endif

let s:writer_theme = g:writer_theme

"Tracks state, open or closed
let g:writer_state = 0

"Set up Writer environment
fu! s:WriterInit(arg)
  let &background = s:writer_theme

  "Basic settings
  colorscheme writer
  setlocal fuopt=background:Normal lines=999 columns=95 fullscreen wrap linebreak spell showbreak=

  "Wrapping and format options
  if g:writer_wrap == 'hard'
    setlocal formatoptions=t textwidth=80
  elseif g:writer_wrap == 'soft'
    setlocal formatoptions=l textwidth=0
  endif

  "Check if the user has par for formatting paragraphs
  if executable('par') == 1
    setlocal formatprg=par
  endif

  "Full writer settings
  if a:arg == 'on'
    setlocal fullscreen
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


" Toggle Writer on and off
fu! s:WriterToggle()
  if g:writer_state == 0
    call <sid>WriterInit('on')
  else
    call <sid>WriterClose()
  endif
endfu

" Toggle between hard breaks at 80 characters and wrapped lines 
fu! s:WriterTextWrap()
  if &formatoptions =~# 't'
    setlocal formatoptions=l
    setlocal textwidth=0
    echo "Hard wrap turned off."
  else
    setlocal formatoptions=t
    setlocal textwidth=80
    echo "Hard wrap turned on."
  endif
endfu

command! WriterInit :call <sid>WriterInit('on')
command! WriterInitQuiet :call <sid>WriterInit('off')
command! WriterJournal :call <sid>WriterJournal('on')
command! WriterJournalOff :call <sid>WriterJournal('off')
command! WriterSwitchThemes :call <sid>WriterSwitch()
command! WriterExit :call <sid>WriterClose()
command! WriterToggle :call <sid>WriterToggle()
command! WriterWrap :call <sid>WriterTextWrap()

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

if !hasmapto(':WriterWrap<CR>')
  map <leader>wp :WriterWrap<CR>
endif
