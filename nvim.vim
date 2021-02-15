
PlugDir=~/.config/nvim/ss

test -d $PlugDir

if [ $? -eq 0 ];then
  curl -fLo $PlugDir/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  if [ $? -eq 0 ];then
    echo "Success to download plug.vim"
  else
    echo "Failure to download plug.vim"
  fi
else
  mkdir $PlugDir
  curl -fLo $PlugDir/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  if [ $? -eq 0 ];then
    echo "Success to download plug.vim"
  else
    echo "Failure to download plug.vim"
  fi
fi
set number

set expandtab
set autoindent
set softtabstop=4
set shiftwidth=2
set tabstop=4

"Enable mouse click for nvim
set mouse=a
"Fix cursor replacement after closing nvim
set guicursor=
"Shift + Tab does inverse tab
inoremap <S-Tab> <C-d>

"See invisible characters
set list listchars=tab:>\ ,trail:+,eol:$

call    plug#begin('~/.config/nvim/plugged')
"MarkDown
Plug    'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
"Plug    'iamcco/markdown-preview.nvim'
call    plug#end()
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0
