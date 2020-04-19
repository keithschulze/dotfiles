Plug 'vimwiki/vimwiki'
Plug 'michal-h21/vim-zettel'
Plug 'https://github.com/alok/notational-fzf-vim'

let g:vimwiki_list = [{'path': '~/OneDrive - MYOB/notes/', 'syntax': 'markdown', 'ext': '.md', 'auto_tags': 1},
                     \{'path': '~/OneDrive - MYOB/wiki/', 'syntax': 'markdown', 'ext': '.md'}]

let g:nv_search_paths = ['~/OneDrive - MYOB/notes/']

" Filename format. The filename is created using strftime() function
let g:zettel_format = "%y%m%d-%H%M"

let g:zettel_fzf_command = "rg --column --line-number --ignore-case --no-heading --color=always "

" Set template and custom header variable for the second Wiki
" let g:zettel_options = [{"front_matter" : {"tags" : ""}, "template" :  "./vimztl.tpl"},{}]

nnoremap <leader>sn/ :NV<CR>

nnoremap <leader>zn :ZettelNew<space>
nnoremap <leader>z<leader>i :ZettelGenerateLinks<CR>
nnoremap <leader>z<leader>t :ZettelGenerateTags<CR>
