set nu
syntax enable
set laststatus=2
set statusline=%t%y%=%l\,%c
colo xoria256
map <F2> :NERDTreeToggle<CR>
set si
set textwidth=160
filetype plugin on
set hlsearch
set incsearch
abbr #b /**
abbr #e **/
abbr #d #define
abbr #i #include
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
