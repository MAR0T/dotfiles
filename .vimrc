
set number
set numberwidth=2
set laststatus=2
set noshowmode
syntax on

let g:lightline = {
      \ 'colorscheme': 'one',
      \ }
set background=dark
set mouse-=a "disables mouse 

au bufnewfile *.sh 0r ~/.vim/templates/sh_header.temp
au bufnewfile *.sh exe "3," . 10 . "g/{CREATED_DATE}/s//".strftime("%d.%m.%Y")
au bufnewfile,bufwritepre *.sh exe "3," . 12 . "g/Modified date.*/s//Modified date \: ".strftime("%d.%m.%Y")
au bufnewfile *.sh exe "3," . 10 . "g/{SCRIPT_NAME}/s//".expand("%")
