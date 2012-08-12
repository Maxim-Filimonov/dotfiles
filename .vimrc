set nocompatible                  " Must come first because it changes other options.

" ===========================================================
"Options to enable VUNDLE
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
"  " required! 
Bundle 'gmarik/vundle'

" ===========================================================
" BUNDLES for VUNDLE:
Bundle 'The-NERD-tree'
Bundle 'tpope/vim-surround'
Bundle 'taglist.vim'
Bundle 'camelcasemotion'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-haml.git'
Bundle 'tpope/vim-endwise.git'
Bundle 'tpope/vim-markdown.git'
Bundle 'Textile-for-VIM'
Bundle 'rodjek/vim-puppet'
Bundle 'ctrlp.vim'
Bundle 'vim-coffee-script'
Bundle 'sjl/threesome.vim.git'
Bundle 'ack.vim'
Bundle 'bbommarito/vim-slim'
Bundle 'Rename'
" ===========================================================
" CONFIGURATION:
syntax enable                     " Turn on syntax highlighting.

filetype plugin indent on     " required!
" Add recently accessed projects menu (project plugin)
set viminfo^=!

" Sets pallete to 256 colors
set t_Co=256
" Set default color scheme 
colo vividchalk
set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set backupdir=.,./.backup,/tmp
set directory=./.backup,.,/tmp


set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
set hidden                        " Handle multiple buffers better.
set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.
set number                        " Show line numbers.
set ruler                         " Show cursor position.
set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.
set autowrite " Writes on make/shell commands
set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.
set bs=2 " Backspace over everything in insert mode
set backspace=indent,eol,start    " Intuitive backspacing.
set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs
set autoindent
set smarttab
set expandtab
set title                         " Set the terminal's title
set visualbell                    " No beeping.

set laststatus=2                  " Show the status line all the time
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" alt+n or alt+p to navigate between entries in QuickFix
map <silent> <m-p> :cp <cr>
map <silent> <m-n> :cn <cr>

" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'



" Visual
set showmatch " Show matching brackets
set mat=5 " Bracket blinking
set list " Set display of $ at the end of the line
set viminfo='20,<1000,s10,h

" File type based indenting
" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
    au!

    " For all text files set 'textwidth' to 78 characters.
    autocmd FileType text setlocal textwidth=78

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    " Also don't do it when the mark is in the first line, that is the default
    " position when opening a file.
    autocmd BufReadPost *
          \ if line("'\"") > 1 && line("'\"") <= line("$") |
          \   exe "normal! g`\"" |
          \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
        \ | wincmd p | diffthis
endif
" Turn off search highlight by CTRL-L after search finished
noremap <silent> <c-l> :nohls<cr><c-l>
" Remap jj to escape
ino jj <esc>
cno jj <c-c>
" For visual mode v
vno v <esc>
