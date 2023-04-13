" auto-install vim-plug
" =============================================================================
" Plugin Manager Setup
" =============================================================================
"
" filetype off

" Install the plugin manager if it doesn't exist
let s:plugin_manager=expand('~/.vim/autoload/plug.vim')
let s:plugin_url='https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

if empty(glob(s:plugin_manager))
  echom 'vim-plug not found. Installing...'
  if executable('curl')
    silent exec '!curl -fLo ' . s:plugin_manager . ' --create-dirs ' .
          \ s:plugin_url
  elseif executable('wget')
    call mkdir(fnamemodify(s:plugin_manager, ':h'), 'p')
    silent exec '!wget --force-directories --no-check-certificate -O ' .
          \ expand(s:plugin_manager) . ' ' . s:plugin_url
  else
    echom 'Could not download plugin manager. No plugins were installed.'
    finish
  endif
  augroup vimplug
    autocmd!
    autocmd VimEnter * PlugInstall
  augroup END
endif

call plug#begin('~/AppData/Local/nvim/autoload/plugged')
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'preservim/nerdtree'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
" Dracula theme
Plug 'dracula/vim', { 'as': 'dracula' }

" Solarized theme
Plug 'altercation/vim-colors-solarized'

" One Dark theme
Plug 'joshdick/onedark.vim'

" Monokai theme
Plug 'sickill/vim-monokai'

" Gruvbox theme
Plug 'morhetz/gruvbox'

" Nord theme
Plug 'arcticicestudio/nord-vim'

" Ayu theme
Plug 'ayu-theme/ayu-vim'

" Apprentice theme
Plug 'romainl/Apprentice'

Plug 'sainnhe/sonokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ellisonleao/gruvbox.nvim'

Plug 'ryanoasis/vim-devicons'

Plug 'sheerun/vim-polyglot'

call plug#end()

" NerdTree """""""""
nmap <C-a> :NERDTreeToggle<CR>

" Airline """"""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'apprentice'
let g:airline#extensions#tabline#formatter = 'default'

colorscheme apprentice
