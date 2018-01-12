call plug#begin('~/.config/nvim/plugged')

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-classpath'

Plug 'junegunn/vim-pseudocl'
Plug 'junegunn/vim-oblique'
Plug 'junegunn/vim-fnr'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/gv.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

Plug 'powerline/powerline'

Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'goldfeld/vim-seek'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-rooter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'qpkorr/vim-bufkill'

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'w0rp/ale'

if !has('nvim')
  Plug 'tpope/vim-sensible'
endif

" control whitespace preferences based on filetype
filetype on

autocmd FileType * setlocal formatoptions-=r formatoptions-=o

let g:python_host_prog = '/Users/keithschulze/miniconda3/envs/neovimp2/bin/python'
let g:python3_host_prog = '/Users/keithschulze/miniconda3/bin/python'
let g:AutoPairsMapCh = 0
let g:deoplete#enable_at_startup = 1
" let g:syntastic_mode_map = { 'passive_filetypes': ['java', 'scala'] }

" Remove whitespaces on save
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

source ~/.dotfiles/vim/nvim/options.vim
source ~/.dotfiles/vim/nvim/statusline.vim
source ~/.dotfiles/vim/nvim/style.vim
source ~/.dotfiles/vim/nvim/keybindings.vim

source ~/.dotfiles/vim/nvim/plugins/airline.vim
source ~/.dotfiles/vim/nvim/plugins/ctrlp.vim
source ~/.dotfiles/vim/nvim/plugins/terminal.vim
source ~/.dotfiles/vim/nvim/plugins/session.vim

source ~/.dotfiles/vim/nvim/lang/scala.vim
source ~/.dotfiles/vim/nvim/lang/clojure.vim
source ~/.dotfiles/vim/nvim/lang/r.vim
source ~/.dotfiles/vim/nvim/lang/python.vim
source ~/.dotfiles/vim/nvim/lang/markdown.vim
source ~/.dotfiles/vim/nvim/lang/java.vim
source ~/.dotfiles/vim/nvim/lang/latex.vim
source ~/.dotfiles/vim/nvim/lang/haskell.vim
call plug#end()
