set number
set termguicolors
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': '.install --all'}
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" auto rustfmt when save
let g:rustfmt_autosave = 1

" joshdick/onedark.vim
colorscheme onedark
"airblade/vim-gitgutter
set updatetime=100

" itchyny/lightline.vim
let g:lightline = {'colorscheme' : 'onedark'}

" scrooloose/nerdtree
nmap <C-e> :NERDTreeToggle<CR>

" majutsushi/tagbar
nmap <F8> :TagbarToggle<CR>

" cooperation between tmux and nvim
" background color when not in focus
let g:InactiveBackGround = 'guibg=#3f4551'

" pain color when not in focus
execute ('hi NormalNC '.g:InactiveBackGround)
execute ('hi NontextNC '.g:InactiveBackGround)
execute ('hi SpecialkeyNC '.g:InactiveBackGround)
execute ('hi EndOfBufferNC '.g:InactiveBackGround)

" focus switching setting
augroup ChangeBackGround
	autocmd!
	" when focus
	autocmd FocusGained * hi Normal guibg='#282c34'
	autocmd FocusGained * hi NonText guibg='#282c34'
	autocmd FocusGained * hi SpecialKey guibg='#282c34'
	" SpecialKey
	autocmd FocusGained * hi EndOfBuffer ctermbg=none
	" when not focus
	autocmd FocusLost * execute('hi Normal '.g:InactiveBackGround)
	autocmd FocusLost * execute('hi NonText '.g:InactiveBackGround)
	autocmd FocusLost * execute('hi SpecialKey '.g:InactiveBackGround)
	autocmd FocusLost * execute('hi EndOfBuffer '.g:InactiveBackGround)
augroup end
