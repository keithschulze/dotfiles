Plug 'joshdick/onedark.vim'
Plug 'trevordmiller/nova-vim'
Plug 'tyrannicaltoucan/vim-quantum'

syntax enable
set background=dark
set guifont=Monoid:h13


" Indent guides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

if (!has("nvim"))
  if (empty($TMUX))
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_SR = "\<Esc>]50;CursorShape=2\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  else
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  endif
endif

" autocmd BufRead * RainbowParentheses

" if (has("nvim"))
"   let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" endif
if (has("termguicolors"))
  set termguicolors
endif

" let g:onedark_termcolors=16
" autocmd VimEnter * colorscheme nova
autocmd VimEnter * colorscheme onedark
" autocmd VimEnter * colorscheme quantum
