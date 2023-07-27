set relativenumber
set number
set expandtab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"OneDark Theme
Plugin 'joshdick/onedark.vim'
"Auto Pairs
Plugin 'jiangmiao/auto-pairs'
"Syntax highlighting JSX
Plugin 'yuezk/vim-js'
Plugin 'maxmellon/vim-jsx-pretty'
"NERDTree folder structure
Plugin 'scrooloose/nerdtree'
"Prettier code formatter
Plugin 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
"Emmet
Plugin 'mattn/emmet-vim'
"Youcompleteme For Autocomplete
Plugin 'valloric/youcompleteme'
"Fugitive vit, git support for vim
Plugin 'tpope/vim-fugitive'
"COC for Autocomplete
Plugin 'neoclide/coc.nvim'
Plugin 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
"C family language formatter
Plugin 'rhysd/vim-clang-format'
" Java Syntax Highlighting
Plugin 'vim-jp/vim-java'
call vundle#end()
filetype indent on
filetype plugin indent on
colorscheme onedark

"NERDTree configuration
"Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
"Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif"
"Toggle NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
"Emmet Config
let g:user_emmet_expandabbr_key='<Tab>'
let g:user_emmet_install_global = 0
autocmd FileType html,css,jsx EmmetInstall

"Shortcut :tabp dan tabn 
noremap <F1> :tabp<CR>
noremap <F2> :tabn<CR>

