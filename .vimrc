execute pathogen#infect()
syntax on
set colorcolumn=80

colorscheme one
set termguicolors

let mapleader=','

nnoremap <leader>d :NERDTreeToggle<cr>
noremap <Leader>w :update<CR>
noremap <Leader>q :q<CR>
nnoremap <silent> <Leader>m :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

imap jj <Esc>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set number

set expandtab " insert with spaces instead of tabs
set shiftwidth=2
set softtabstop=2

set diffopt+=iwhite " ignore whitespaces

set switchbuf+=newtab " open in new tab from QUICKFIX

set nobackup
set nowritebackup
set noswapfile " disable swap files

"set guitablabel=%t
set list listchars=tab:>·,trail:·,precedes:<,extends:>,space:· " show dots, indentation
set guifont=Source\ Code\ Pro\ for\ Powerline

filetype plugin indent on " auto indent on insert in function body

"VIM-AIRLINE
let g:airline_theme='one'
let g:one_allow_italics = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#fnamemod = ':t' " Just show the filename (no path) in the tab

"SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["scss"] }

" searching
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ag_working_path_mode="r"

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

" jump to tab
for i in range(1,9)
  execute 'nnoremap <leader>'.i.' '.i.'gt'
endfor

" map leader f to search
nmap <leader>f :Ack<space>

" put cursor at the end of line
nmap <leader><leader> $
vmap <leader><leader> $

" put cursor at the start of line
nmap <leader><leader><leader> ^
vmap <leader><leader><leader> ^

nnoremap <Leader>l :ls<CR>:b<Space>

" move to next line on end
set whichwrap+=h,l
set whichwrap+=<,>,[,]

set guioptions-=r "remove right-hand scroll bar
set guioptions-=L "remove left-hand scroll bar

nmap <leader>sv :windo wincmd H <cr> " horizontal to vertical split
nmap <leader>sh :windo wincmd K<cr> " vertical to horizontal split
nnoremap <leader>f :Grepper -tool ag<cr>

" previous buffer
nmap <Backspace> :bprevious<CR>
" next buffer
nmap <S-Backspace> :bnext<CR>


