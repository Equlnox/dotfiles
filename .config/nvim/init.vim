set nu
set rnu
"set clipboard+=unnamedplus
set showmatch
set tabstop=8
set shiftwidth=4
set expandtab
set splitbelow
set splitright
set autoread
set list

nnoremap ; :
nnoremap <C-L> :let @/=""<CR>
nnoremap <C-C> "+y
nnoremap <C-V> "+P
"nnoremap gy gt
"nnoremap gt gT
" Alternatively use
nnoremap K :tabprev<CR>
nnoremap J :tabnext<CR>
nnoremap tn :tabnew<CR>
nnoremap td  :tabclose<CR>
nnoremap <M-1> 1gt
nnoremap <M-2> 2gt
nnoremap <M-3> 3gt
nnoremap <M-4> 4gt
nnoremap <M-5> 5gt
nnoremap <M-6> 6gt
nnoremap <M-7> 7gt
nnoremap <M-8> 8gt
nnoremap <M-9> 9gt
nnoremap <M-0> 10gt

call plug#begin('~/.local/share/nvim/plugged')
    Plug 'Valloric/YouCompleteMe', {'dir': '~/.local/share/nvim/plugged/YouCompleteMe/', 'do': './install.py --clang-completer'}
    "Nerd commenter
    Plug 'scrooloose/nerdcommenter'
   
    Plug 'xolox/vim-misc'   
    "Fuzzy finder (files, mru, etc)
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'morhetz/gruvbox'
    "A pretty statusline, bufferline integration
    Plug 'itchyny/lightline.vim'
    Plug 'bling/vim-bufferline'

    "Autoclose (, " etc
    "Plug 'somini/vim-autoclose'
    Plug 'jiangmiao/auto-pairs'

    "Handle surround chars like ''
    Plug 'tpope/vim-surround'

    "Reformat/Reindent whole file with single line
    Plug 'Chiel92/vim-autoformat'

    "Nerd Tree File explorer
    Plug 'scrooloose/nerdtree'

    "Color Scheme vim-one
    Plug 'rakr/vim-one'

    "Color Scheme dracula
    Plug 'dracula/vim'

    "Color Scheme jellybeans
    Plug 'nanotech/jellybeans.vim'
    "Plugin for C++ syntax highlighting
    Plug 'octol/vim-cpp-enhanced-highlight'

    "Plugins for \LaTeX
    Plug 'lervag/vimtex'

    "Plugin for asynchronously running shell commands
    Plug 'skywind3000/asyncrun.vim'

    "Plugin for installing various colorschemes
    Plug 'flazz/vim-colorschemes'

    "Plugin for colorscheme switcher
    Plug 'xolox/vim-colorscheme-switcher'

    "Plugin for snippets
    Plug 'SirVer/ultisnips'
call plug#end()
syntax on 
"if (empty($TMUX))
  "if (has("nvim"))
  ""For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  "let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  "endif
  ""For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  ""Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  "" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  "if (has("termguicolors"))
    "set termguicolors
  "endif
"endif
"set background=dark " for the dark version
"colorscheme gruvbox
"set background=light " for the light version
"colorscheme one "colorscheme one
"set background=dark
color dracula
" Alternative solution for clipboard
" " Copy to clipboard
"vnoremap  <leader>y  "+y
"nnoremap  <leader>Y  "+yg_
"nnoremap  <leader>y  "+y
"nnoremap  <leader>yy  "+yy

" " Paste from clipboard
"nnoremap <leader>p "+p
"nnoremap <leader>P "+P
"vnoremap <leader>p "+p
"vnoremap <leader>P "+P
"nnoremap <C-b> j
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
"map <F2> <ESC>:w<CR>:wa<CR>:!echo '%:t:r: %:t\n\tg++ -o %:t:r %:t' > makefile && make<CR>
"map <F3> <F2><CR>:!./%:t:r < /home/equinox/Working/input.txt > /home/equinox/Working/output.txt<CR>
map <F2> <ESC>:wa<CR>:!g++ %<CR>
map <F3> <ESC>:wa<CR>:!./a.out < ~/Working/input.txt > ~/Working/output.txt <CR>:vsp ~/Working/output.txt<CR>
"map <F3> <ESC>:wa<CR>:!./a.out < ~/Working/input.txt \| tee ~/Working/output.txt<CR>
"if has("autocmd")
  "augroup templates
    "autocmd BufNewFile *.cpp 0r ~/.config/nvim/templates/skeleton.cpp
  "augroup END
"endif
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsEditSplit="vertical"