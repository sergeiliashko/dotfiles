set nocompatible
set number
filetype plugin indent on
set ts=2
set expandtab

set modeline
" when using the >> or << commands, shift lines by 4 spaces 
set shiftwidth=2
"set cursorline
set autoindent
set showmatch

" Everybody loves color
syntax on
" enable all Python syntax highlighting features
let python_highlight_all = 1

" Nice colorscheme
colorscheme xoria256
" set background=dark

" It is nice, when I can move between closing tags and keywords with %
runtime macros/matchit.vim

" Make sure that unsaved buffers that are to be put in the background are 
" allowed to go in there (ie. the 'must save first' error doesn't come up)
" set hidden
" set autoread

" Set the status line the way i like it
set laststatus=2

 function! FugitiveStatusLine()
   let status = fugitive#statusline()
   let trimmed = substitute(status, '\[Git(\(.*\))\]', '\1', '')
   let trimmed = substitute(trimmed, '\(\w\)\w\+\ze/', '\1', '')
   let trimmed = substitute(trimmed, '/[^_]*\zs_.*', '', '')
   if len(trimmed) == 0
     return ''
   else
     return '(' . trimmed[0:10] . ')'
   endif
 endfunction
 let g:statli="%f\ %m\ %r%{FugitiveStatusLine()}\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]"
 let &stl=statli
 "set stl=%f\ %m\ %r%{FugitiveStatusLine()}\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]
set stl=%f\ %m\ Line()}\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]

" Show waiting for commands in the right bottom corner of the command line
set showcmd

" Show the current mode
set showmode

" Make the command-line completion better
set wildmenu

" Make command line two lines high
set ch=2


if has("autocmd")
  augroup templates
    " autocmd BufNewFile *.sh 0r ~/.vim/templates/skeleton.sh
    autocmd BufNewFile  Makefile 0r ~/templates/Makefile
  augroup END
endif

" Test of russian keymap

set keymap=russian-jcukenmac
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan
cmap <silent> <F9> <C-^>
imap <silent> <F9> <C-^><Esc>:call MyKeyMapHighlight()<CR>a<C-H>
nmap <silent> <F9> a<C-^><Esc>:call MyKeyMapHighlight()<CR>
vmap <silent> <F9> <Esc>a<C-^><Esc>:call MyKeyMapHighlight()<CR>gv
function MyKeyMapHighlight()
	if &iminsert == 0
    let &statusline=g:statli . " - EN"
		" hi StatusLine ctermfg=Blue guifg=Blue
    else
      let &statusline=g:statli . " - RU"
      " hi StatusLine ctermfg=Red guifg=Red
    endif
endfunction
call MyKeyMapHighlight()
au WinEnter * :call MyKeyMapHighlight()

" Run checktime in buffers, but avoiding the 'Command Line' (q:) window
au CursorHold * if getcmdwintype() == '' | checktime | endif

" I don't want 007 + 001 = 010 because of the octalns
set nrformats=

" To toogle paste option
:set pastetoggle=<f5>
:set dir=~/.vim/tmp

" new option, nice line brake
set breakindent
set showbreak=\\\\\

set undodir=~/.vim/undo-dir
set undofile

autocmd filetype crontab setlocal nobackup nowritebackup
