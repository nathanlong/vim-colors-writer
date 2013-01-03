" Writer Light theme color scheme for Powerline
" N = no focus

if &background == "dark"
call Pl#Hi#Allocate({
  \ 'base1'    : [8,   0x000000],
  \ 'base2'    : [0,   0x091f0f],
  \ 'text'     : [10,  0x216e35],
  \ 'textlo'   : [11,  0x13401f],
  \ 'texthi'   : [12,  0x428f55],
  \ 'altlo'    : [14,  0x00503c],
  \ 'althi'    : [7,   0x007a5a],
  \ 'accentlo' : [15,  0x235257],
  \ 'accenthi' : [3,   0x307278],
  \ 'nearinv'  : [9,   0x001200],
	\ })
endif

if &background == "light"
call Pl#Hi#Allocate({
  \ 'base1'    : [8,   0xf0f2f1],
  \ 'base2'    : [0,   0xd4d5d9],
  \ 'text'     : [10,  0x4a413a],
  \ 'textlo'   : [11,  0x968475],
  \ 'texthi'   : [12,  0x302a26],
  \ 'altlo'    : [14,  0x80d7ff],
  \ 'althi'    : [7,   0x00aeff],
  \ 'accentlo' : [15,  0xe8c24c],
  \ 'accenthi' : [3,   0xab8f38],
  \ 'nearinv'  : [9,   0xededed],
	\ })
endif

let g:Powerline#Colorschemes#writer#colorscheme = Pl#Colorscheme#Init([
	\ Pl#Hi#Segments(['SPLIT'], {
		\ 'n': ['base2',  'base1'],
		\ 'N': ['base2',  'base1'],
		\ 'i': ['base2',  'base1'],
		\ }),
	\
	\ Pl#Hi#Segments(['mode_indicator'], {
		\ 'n': ['base1',  'althi',     ['bold']],
		\ 'i': ['base1',  'accenthi',   ['bold']],
		\ 'v': ['textlo',  'altlo',  ['bold']],
		\ 'r': ['textlo',  'accentlo',   ['bold']],
		\ 's': ['base1',  'accenthi',   ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['branch'], {
		\ 'n': ['base1',   'textlo'],
		\ 'N': ['base1',   'textlo'],
		\ 'i': ['base1',   'textlo'],
		\ }),
	\
  \ Pl#Hi#Segments(['scrollpercent', 'raw', 'filesize'], {
		\ 'n': ['base1',   'base2'],
		\ 'N': ['base1',   'base2'],
		\ 'i': ['base1',   'base2'],
		\ }),
	\
	\ Pl#Hi#Segments(['fileinfo', 'filename'], {
		\ 'n': ['base1',   'altlo',   ['bold']],
		\ 'N': ['base1',   'altlo' ],
		\ 'i': ['base1',   'accentlo',    ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['fileinfo.filepath'], {
		\ 'n': ['althi'],
		\ 'N': ['althi'],
		\ 'i': ['accenthi'],
		\ }),
	\
	\ Pl#Hi#Segments(['static_str'], {
		\ 'n': ['base1',   'accentlo'],
		\ 'N': ['base1',  'accentlo'],
		\ 'i': ['base1',   'accentlo'],
		\ }),
	\
	\ Pl#Hi#Segments(['fileinfo.flags'], {
		\ 'n': ['base2'],
		\ 'N': ['base2'],
		\ 'i': ['base2'],
		\ }),
	\
	\ Pl#Hi#Segments(['currenttag', 'fileformat', 'fileencoding', 'pwd', 'filetype', 'rvm:string', 'rvm:statusline', 'virtualenv:statusline', 'charcode', 'currhigroup'], {
		\ 'n': ['base2', 'nearinv'],
		\ 'i': ['base2', 'nearinv'],
		\ }),
	\
	\ Pl#Hi#Segments(['lineinfo'], {
		\ 'n': ['base1',   'textlo',  ['bold']],
		\ 'N': ['base1',   'textlo'],
		\ 'i': ['base1',   'textlo',  ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['errors'], {
		\ 'n': ['accenthi',  'base1',  ['bold']],
		\ 'i': ['accenthi',  'base1',  ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['lineinfo.line.tot'], {
		\ 'n': ['base1'],
		\ 'N': ['base1'],
		\ 'i': ['base1'],
		\ }),
	\
	\ Pl#Hi#Segments(['paste_indicator', 'ws_marker'], {
		\ 'n': ['base1', 'accenthi', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['gundo:static_str.name', 'command_t:static_str.name'], {
		\ 'n': ['base1',   'altlo',     ['bold']],
		\ 'N': ['base1',  'altlo',  ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['gundo:static_str.buffer', 'command_t:raw.line'], {
		\ 'n': ['base2',  'altlo'],
		\ 'N': ['base2',  'altlo'],
		\ }),
	\
	\ Pl#Hi#Segments(['gundo:SPLIT', 'command_t:SPLIT'], {
		\ 'n': ['base1',  'althi'],
		\ 'N': ['base1',  'althi'],
		\ }),
	\
	\ Pl#Hi#Segments(['lustyexplorer:static_str.name', 'minibufexplorer:static_str.name', 'nerdtree:raw.name', 'tagbar:static_str.name'], {
		\ 'n': ['base2',   'altlo',   ['bold']],
		\ 'N': ['base2',  'altlo'],
		\ }),
	\
	\ Pl#Hi#Segments(['lustyexplorer:static_str.buffer', 'tagbar:static_str.buffer'], {
		\ 'n': ['base1',   'base2'],
		\ 'N': ['base1',  'base2'],
		\ }),
	\
	\ Pl#Hi#Segments(['lustyexplorer:SPLIT', 'minibufexplorer:SPLIT', 'nerdtree:SPLIT', 'tagbar:SPLIT'], {
		\ 'n': ['base2',  'base2'],
		\ 'N': ['base2',  'base2'],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:focus', 'ctrlp:byfname'], {
		\ 'n': ['textlo', 'base1'],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:prev', 'ctrlp:next', 'ctrlp:pwd'], {
		\ 'n': ['textlo', 'base1'],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:item'], {
		\ 'n': ['base2', 'althi', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:marked'], {
		\ 'n': ['nearinv', 'base1', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:count'], {
		\ 'n': ['base2', 'accenthi'],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:SPLIT'], {
		\ 'n': ['base1', 'base2'],
		\ }),
	\ ])

