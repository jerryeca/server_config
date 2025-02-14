" basic config
let mapleader=" "
syntax on
filetype plugin indent on
set number
set relativenumber
set wrap
set showcmd
set wildmenu
set ignorecase
set smartcase
set smartindent

" set Tab to 4 space
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" basic map
map R :source $MYVIMRC<CR>

" config to  colemak
"     ^
"     u
" < n   i >
"     e
"     v
noremap <silent> n h
noremap <silent> u k
noremap <silent> e j
noremap <silent> i l
noremap <silent> k i
noremap <silent> K I
noremap <silent> l u

" faster navigation
noremap <silent> U 5k
noremap <silent> E 5j
noremap <silent> N 0
noremap <silent> I $
noremap W 5w
noremap B 5b

" find pair
noremap ] n
noremap [ N

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap su :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap se :set splitbelow<CR>:split<CR>
noremap sn :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap si :set splitright<CR>:vsplit<CR>

" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

" Use <space> + new arrow keys for moving the cursor around windows
noremap <LEADER>w <C-w>w
noremap <LEADER>u <C-w>k
noremap <LEADER>e <C-w>j
noremap <LEADER>n <C-w>h
noremap <LEADER>i <C-w>l

" Create a new tab with tu
noremap tu :tabe<CR>
noremap tU :tab split<CR>
" Move around tabs with tn and ti
noremap tn :-tabnext<CR>
noremap ti :+tabnext<CR>

" Switch between different files
noremap <C-i> :next<CR>
noremap <C-n> :previous<CR>

" use tab to auto completion 
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-n>" : "\<S-Tab>"

"plugins
call plug#begin('~/.vim/plugged')
 Plug 'sheerun/vim-polyglot'
 Plug 'prabirshrestha/vim-lsp'          
 Plug 'mattn/vim-lsp-settings'
 Plug 'vim-scripts/AutoComplPop'   " 自动弹出补全菜单
 Plug 'ryanoasis/vim-devicons'     " 补全菜单图标美化
call plug#end()



inoremap <expr> <Tab>   pumvisible() ? "\<C-Y>" : "\<Tab>"  
inoremap <expr> <S-Tab> pumvisible() ? "\<C-P>" : "\<S-Tab>:

