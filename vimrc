" Tommaso Rizzi
" .vimrc
"
" activates filetype detection
filetype plugin indent on    " required

" ativates syntax highlighting amon other things
syntax on 

set number relativenumber	"Turn hybrid line numbers on
set noshowmode			    "Disable non-normal modes showing below lighline

set modeline                "Enable Vim to check lines at BOF or EOF for commands
set modelines=1             "Check only first and last line of files

""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Search
""""""""""""""""""""""""""""""""""""""""""""""""""""

"set hlsearch			"Turn highlight in search on


""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse
""""""""""""""""""""""""""""""""""""""""""""""""""""

set mouse=a			"Enable mouse movement in Vim


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

set splitbelow splitright           "Set position for new window

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Removes pipes | that act as seperators on splits
set fillchars+=vert:\ 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Using SmartTab plugin (~/.vim/plugin/ctab.vim)
"<Tab> at BOL, <Spaces> otherwaise

set autoindent          "Copy indent from current line for new line
set smartindent         "Smart autoindenting when starting a new line
set smarttab            "<shiftwidth> at BOL, <tabstop> otherwaise
set shiftwidth=4        "<Tab>'s width at BOL
set tabstop=4           "<Tab>'s width elsewhere


""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Lightline
""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:lightline = {
\   'colorscheme': 'nord',
\   'active': {
\       'left': [   [ 'mode', 'paste'],
\                   [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
\   },
\   'component_function':  {
\       'gitbranch': 'FugitiveHead'
\   },
\}

set laststatus=2		"Always show statusline
set t_Co=256			"Use 256 colors


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colorizer
" 		see > :h Colorizer
" 		to enable in a file > :ColorToggle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Using Colorizer plugin (~/.vim/plugin/ColorizerPlugin.vim)
"To enable in a file >:ColorToggle
"See helps with >:h Colorizer

"let g:colorizer_auto_color = 1				"Autostarts Colorizer
let g:colorizer_auto_filetype='css,html'	"Enable for filetypes
let g:colorizer_fgcontrast = 1				"Adjust the contrast [-1:2]
"let g:colorizer_colornames = 0				"Disable highlight colornames


""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color set used for gvim

"colo default			"Set default as color set
