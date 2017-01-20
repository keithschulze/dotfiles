Plug 'joshdick/onedark.vim'
Plug 'mhartington/oceanic-next'
Plug 'trevordmiller/nova-vim'

syntax enable
set background=dark
set guifont=Monoid:h13


" Indent guides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" autocmd BufRead * RainbowParentheses

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif

" let g:onedark_termcolors=16
autocmd VimEnter * colorscheme nova
" autocmd VimEnter * colorscheme onedark
" autocmd VimEnter * colorscheme OceanicNext
