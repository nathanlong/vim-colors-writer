" Writer.vim - Distraction free writing environment
" Maintainer:   Nathan Long (www.nathan-long.com)
" Version:      0.1

"Defaults for writing
function! WriterInit()
   set background=light
   colorscheme writer
   setlocal lines=999 columns=80 fullscreen spell nonumber
endfunction

"Opens a journal file in my dropbox
fu! WriterJournal()
    let today = strftime("%y%m%d")
    exe ':e ~/Dropbox/docs/journal/' . today . ".md"
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

