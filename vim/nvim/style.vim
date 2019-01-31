Plug 'trevordmiller/nova-vim'
Plug 'rakr/vim-one'
Plug 'arcticicestudio/nord-vim'
Plug 'AlessandroYorba/Sierra'

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

" Sierra
" autocmd VimEnter * colorscheme sierra

" Nord options
let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_comment_brightness = 12
autocmd VimEnter * colorscheme nord

" let g:one_allow_italics = 1
" autocmd VimEnter * colorscheme one
" autocmd VimEnter * AirlineRefresh


"if theme supports true colour
if (empty($TMUX))
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set background=dark
