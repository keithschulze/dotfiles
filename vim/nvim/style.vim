Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim'

syntax enable

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

"if theme supports true colour
if (has("termguicolors"))
  set termguicolors
endif

set background=dark

" Nord options
" let g:nord_italic = 1
" let g:nord_italic_comments = 1
" let g:nord_underline = 1
" autocmd VimEnter * colorscheme nord


" Ayu options
let ayucolor="mirage"
autocmd VimEnter * colorscheme ayu

