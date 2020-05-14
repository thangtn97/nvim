let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom "Error downloading vim-plug. Please install it manually.\n"
            exit
        endif
    else
        echom "vim-plug not installed. Please install it manually or install curl.\n"
        exit
    endif
endif
call plug#begin('~/.config/nvim/plugged')
"import file react
Plug 'ludovicchabant/vim-gutentags'
" Snippet react
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'jiangmiao/auto-pairs'
" Intellisense Engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
"vim indent line
Plug 'Yggdroot/indentLine'

"vim-js
Plug 'pangloss/vim-javascript'


"Snippet support
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Searching file
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"React auto close
 Plug 'alvan/vim-closetag'
" ReactJS JSX syntax highlighting
Plug 'mxw/vim-jsx'
" Improved syntax highlighting and indentation
"Plug 'othree/yajs.vim'
" === UI === "
" File explorer
Plug 'preservim/nerdtree'
" Colorscheme
Plug 'mhartington/oceanic-next'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'https://github.com/joshdick/onedark.vim.git'

Plug 'sheerun/vim-polyglot'

" Customized vim status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Icons
Plug 'ryanoasis/vim-devicons'
set encoding=UTF-8
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 15
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Initialize plugin system
call plug#end()
