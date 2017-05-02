" markdown files
Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
Plug 'junegunn/goyo.vim'
" Plug 'gabrielelana/vim-markdown'

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_math = 1
let g:goyo_width = 80

autocmd BufNewFile,BufRead *.md,*.mkd,*.markdown setfiletype markdown
autocmd BufNewFile,BufRead *.md,*.mkd,*.markdown set spell spelllang=en_gb
