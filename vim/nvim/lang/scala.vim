Plug 'derekwyatt/vim-scala'
Plug 'ensime/ensime-vim'

let g:syntastic_scala_scalastyle_jar = "/usr/local/opt/scalastyle/libexec/scalastyle_2.11-0.8.0-batch.jar"
let g:syntastic_scala_scalastyle_config_file = "~/Development/.config/scalastyle-config.xml"
let g:syntastic_scala_checkers = ['scalac', 'fsc', 'scalastyle']

autocmd BufWritePost *.scala :EnTypeCheck

au FileType scala,java nnoremap <Leader>et :EnType<CR>
au FileType scala,java nnoremap <Leader>ec :EnTypeCheck<CR>
au FileType scala nnoremap <Leader>ed :EnDeclarationSplit v<CR>
au FileType scala nnoremap <Leader>eb :EnDocBrowse<CR>
au FileType scala nnoremap <Leader>fs :EnFormatSource<CR>
au FileType scala nnoremap <Leader>it :EnInspectType<CR>
au FileType scala nnoremap <Leader>oi :EnOrganizeImports<CR>
