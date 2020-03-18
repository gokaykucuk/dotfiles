""" Vim-Plug
call plug#begin()

Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'janko/vim-test'
Plug 'frazrepo/vim-rainbow'
Plug 'airblade/vim-gitgutter'
Plug 'ajmwagar/vim-deus',
Plug 'neoclide/coc.nvim', {'branch':'release'} 
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'nikvdp/ejs-syntax'

call plug#end()

" NERDTree mappings
map <silent> <C-n> :NERDTreeToggle<CR>

" Color settings
colorscheme deus

" Key bindings for tests.
" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" Key bindings for fzf
nmap <F1> f<C-f> :Files<CR>

" Enable rainbow brackets
let g:rainbow_active = 1

" Tabs to spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Yaml Fix
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
