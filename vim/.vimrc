"------------------------ vundle BEGIN --------------
" Set on all enhancements of and improvements of Vi Improved will be turned off!
set nocompatible
" Enable syntax highlighting
syntax on
 
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
        Bundle 'jistr/vim-nerdtree-tabs'
	Plugin 'scrooloose/nerdtree'
	Bundle 'rafi/awesome-vim-colorschemes'
        Plugin 'Valloric/YouCompleteMe'
        Plugin 'nvie/vim-flake8'
        Plugin 'jiangmiao/auto-pairs'
        Plugin 'scrooloose/nerdcommenter'
call vundle#end()            	" required
filetype plugin indent on  	" required - Enables idendentation based

"------------------------ Vundle END -------------------

"------------------------GUI-------------"
" If GUI remove uncessesary menus
" Set number of lines
" Set font to use in GUI mode aka GVim
if has('gui_running')
	set guioptions=i
	set guioptions-=e
	set lines=999 columns=999
	set guifont=Hack\ 10
endif

"------------YouCompleteMe---------------"

set completeopt-=preview
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_max_diagnostics_to_display = 10
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_max_num_identifier_candidates = 10
let g:ycm_max_num_candidates = 20

"------------Color scheme ---------------"
colorscheme gruvbox
set background=dark
 
" Maximum width of an actual tab character
" Non zero inserts combination of spaces/tabs
" Tab key now inserts spaces instead of tabs
" Size of an indent measured in spaces
" Inserts tab at beginning of line
"----------
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
"---------

" Show line numbers
set nu

"------------Keybindings ------------------"

"map leader key

:let mapleader = ","

"------------Arrow Keys---------------------"

no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

"------------Tab Control -------------------"

nmap <C-Tab> :tabnext <CR>
nmap <C-S-Tab> :tabprevious <CR>
map <C-S-Tab> :tabprevious <CR>
map <C-Tab> :tabnext <CR>
imap <C-S-Tab> <ESC>:tabprevious <CR>
imap <C-Tab> <ESC> :tabnext <CR>
"noremap <F7> :set expandtab! <CR>

"------------Auto Center -------------------"

nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

"------------Lines -------------------------"

nmap g<C-O> o<ESC>k
nmap gO O<ESC>j

noremap <M-j> :m .+1 <CR>==
noremap <M-k> :m .-2 <CR>==


"-------------Custom Motion Mappings--------"

"Delete all arguments and enter insert mode
nmap da, ci(
"Delete Argument in fucntion declaration
nmap di, F,ldt,i

"-------------Leader mappings---------------"

imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>{ {}<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i

"-------------File handling-----------------"

nmap <C-s> :w <CR>

"-------------NerdTree---------------------"
:map <C-f> :NERDTreeTabsOpen <Enter>
:map <C-a> :NERDTreeFocusToggle <Enter>

"------------Abbreviations----------------"

iabbr ture true
iabbr flase false

"------------Highlight column 80-----------"

highlight ColorColumn ctermbg=red ctermfg=white guibg=#592929
set colorcolumn=80

"------------Highlight trailing whitespace----"

highlight ExtraWhiteSpace ctermbg=darkgreen guibg=darkgreen
autocmd BufRead *.py match ExtraWhiteSpace /\s\+$\| \+\ze\t/

"------------Spelling / Clipboard----------"

:set spell spelllang=en_us
:set clipboard=unnamedplus

"------------------------------------------"

function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>n :call RenameFile()<cr>

"------------------------------------------"

" Prevent blinking
set belloff=all
" Look for ctags in current directory
set tags=tags;/
