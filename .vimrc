" Fisa-vim-config
" http://fisadev.github.io/fisa-vim-config/
" version: 8.2
" 2016.11.13

" ============================================================================
" Vim-plug initialization
" Avoid modify this section, unless you are very sure of what you are doing

let vim_plug_just_installed = 0
let vim_plug_path = expand('~/.vim/autoload/plug.vim')
if !filereadable(vim_plug_path)
    echo "Installing Vim-plug..."
    echo ""
    silent !mkdir -p ~/.vim/autoload
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let vim_plug_just_installed = 1
endif

" manually load vim-plug the first time
if vim_plug_just_installed
    :execute 'source '.fnameescape(vim_plug_path)
endif

" Obscure hacks done, you can now modify the rest of the .vimrc as you wish :)

" ============================================================================
" Active plugins
" You can disable or add new ones here:

" this needs to be here, so vim-plug knows we are declaring the plugins we
" want to use
call plug#begin('~/.vim/plugged')

" Plugins from github repos:

"*************************************************
" SELECTED and INSTALLED

" Code commenter
Plug 'scrooloose/nerdcommenter'
" Class/module browser
Plug 'majutsushi/tagbar'
" Paint css colors with the real color
Plug 'lilydjwg/colorizer'

" Plugins from vim-scripts repos:

" Search results counter
Plug 'IndexedSearch'

" My choice
Plug 'luochen1990/rainbow'

"*************************************************
" STOPPED but INSTALLED

" Better file browser
Plug 'scrooloose/nerdtree'
" Terminal Vim with 256 colors colorscheme
"Plug 'fisadev/fisa-vim-colorscheme'
" Better autocompletion
"Plug 'Shougo/neocomplcache.vim'
" Python mode (indentation, doc, refactor, lints, code checking, motion and
" operators, highlighting, run and ipdb breakpoints)
"Plug 'klen/python-mode'
" Python and other languages code checker
"Plug 'scrooloose/syntastic'

"*************************************************
" RECOMMED BY ORIGINAL LIST but NOT YET INSTALL

" Override configs by directory 
"Plug 'arielrossanigo/dir-configs-override.vim'
" Code and files fuzzy finder
"Plug 'ctrlpvim/ctrlp.vim'
" Extension to ctrlp, for fuzzy command finder
"Plug 'fisadev/vim-ctrlp-cmdpalette'
" Zen coding
"Plug 'mattn/emmet-vim'
" Git integration
"Plug 'motemen/git-vim'
" Tab list panel
"Plug 'kien/tabman.vim'
" Airline
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
" Consoles as buffers
"Plug 'rosenfeld/conque-term'
" Pending tasks list
"Plug 'fisadev/FixedTaskList.vim'
" Surround
"Plug 'tpope/vim-surround'
" Autoclose
"Plug 'Townk/vim-autoclose'
" Indent text object
"Plug 'michaeljsmith/vim-indent-object'
" Indentation based movements
"Plug 'jeetsukumaran/vim-indentwise'
" Snippets manager (SnipMate), dependencies, and snippets repo
"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'tomtom/tlib_vim'
"Plug 'honza/vim-snippets'
"Plug 'garbas/vim-snipmate'
" Git/mercurial/others diff icons on the side of the file lines
"Plug 'mhinz/vim-signify'
" Automatically sort python imports
" It needs 'pip install isort'
"Plug 'fisadev/vim-isort'
" Drag visual blocks arround
"Plug 'fisadev/dragvisuals.vim'
" Window chooser
"Plug 't9md/vim-choosewin'
" Ack code search (requires ack installed in the system)
"Plug 'mileszs/ack.vim'
"if has('python')
    " YAPF formatter for Python
    " It needs 'pip install yapf' 
"    Plug 'pignacio/vim-yapf-format'
"endif
" Relative numbering of lines (0 is the current line)
" (disabled by default because is very intrusive and can't be easily toggled
" on/off. When the plugin is present, will always activate the relative 
" numbering every time you go to normal mode. Author refuses to add a setting 
" to avoid that)
" Plug 'myusuf3/numbers.vim'

" Plugins from vim-scripts repos:

" XML/HTML tags navigation
"Plug 'matchit.zip'
" Gvim colorscheme
"Plug 'Wombat'
" Yank history navigation
"Plug 'YankRing.vim'
"*************************************************

" Tell vim-plug we finished declaring plugins, so it can load them
call plug#end()

" ============================================================================
" Install plugins the first time vim runs

if vim_plug_just_installed
    echo "Installing Bundles, please ignore key map error messages"
    :PlugInstall
endif

" ============================================================================
" Vim settings and mappings
" You can edit them as you wish

" allow plugins by file type (required for plugins!) ?Which plugins?
"filetype plugin on
"filetype indent on

" syntax highlight on
syntax on

" show line numbers
set nu

" always show status bar
" Powerline also need this
set ls=2

" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3

" incremental search
"""set incsearch

" highlighted search results
set hlsearch

" no vi-compatible
"""set nocompatible

" Comment this line to enable autocompletion preview window
" (displays documentation related to the selected completion option)
" Disabled by default because preview makes the window flicker
"""set completeopt-=preview

" autocompletion of files and commands behaves like shell
" (complete only the common part, list the options that match)
"""set wildmode=list:longest

" tabs and spaces handling
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" tab length exceptions on some file types
"""autocmd FileType html setlocal shiftwidth=4 tabstop=4 softtabstop=4
"""autocmd FileType htmldjango setlocal shiftwidth=4 tabstop=4 softtabstop=4
"""autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4

" tab navigation mappings
"""map tn :tabn<CR>
"""map tp :tabp<CR>
"""map tm :tabm 
"""map tt :tabnew 
"""map ts :tab split<CR>
"""map <C-S-Right> :tabn<CR>
"""imap <C-S-Right> <ESC>:tabn<CR>
"""map <C-S-Left> :tabp<CR>
"""imap <C-S-Left> <ESC>:tabp<CR>

" navigate windows with meta+arrows
" It maybe related to Window chooser. Plug 't9md/vim-choosewin'
"""map <M-Right> <c-w>l
"""map <M-Left> <c-w>h
"""map <M-Up> <c-w>k
"""map <M-Down> <c-w>j
"""imap <M-Right> <ESC><c-w>l
"""imap <M-Left> <ESC><c-w>h
"""imap <M-Up> <ESC><c-w>k
"""imap <M-Down> <ESC><c-w>j

" old autocomplete keyboard shortcut
"""imap <C-J> <C-X><C-O>

" save as sudo
"""ca w!! w !sudo tee "%"

" simple recursive grep
" It maybe related to Ack code search. Plug 'mileszs/ack.vim'
"""nmap ,r :Ack 
"""nmap ,wr :Ack <cword><CR>

" use 256 colors when possible
"""if (&term =~? 'mlterm\|xterm\|xterm-256\|screen-256') || has('nvim')
"""	let &t_Co = 256
"""    colorscheme fisa
"""else
"""    colorscheme delek
"""endif

" colors for gvim
" It maybe related to Gvim colorscheme. Plug 'Wombat'
"""if has('gui_running')
"""    colorscheme wombat
"""endif

" better backup, swap and undos storage
"""set directory=~/.vim/dirs/tmp     " directory to place swap files in
"""set backup                        " make backup files
"""set backupdir=~/.vim/dirs/backups " where to put backup files
"""set undofile                      " persistent undos - undo after you re-open the file
"""set undodir=~/.vim/dirs/undos
"""set viminfo+=n~/.vim/dirs/viminfo
" store yankring history file there too
" It maybe related to Yank history navigation. Plug 'YankRing.vim'
"""let g:yankring_history_dir = '~/.vim/dirs/'

" create needed directories if they don't exist
"""if !isdirectory(&backupdir)
"""    call mkdir(&backupdir, "p")
"""endif
"""if !isdirectory(&directory)
"""    call mkdir(&directory, "p")
"""endif
"""if !isdirectory(&undodir)
"""    call mkdir(&undodir, "p")
"""endif

" ============================================================================
" Plugins settings and mappings
" Edit them as you wish.

"*************************************************
" SELECTED and INSTALLED

" Tagbar ----------------------------- 

" toggle tagbar display
map <F4> :TagbarToggle<CR>
" autofocus on tagbar open
let g:tagbar_autofocus = 1

"*************************************************
" STOPPED but INSTALLED

" NERDTree ----------------------------- 

" toggle nerdtree display
map <F3> :NERDTreeToggle<CR>
" open nerdtree with the current file selected
nmap ,t :NERDTreeFind<CR>
" don;t show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

" NeoComplCache ------------------------------

" most of them not documented because I'm not sure how they work
" (docs aren't good, had to do a lot of trial and error to make 
" it play nice)
"""let g:neocomplcache_enable_at_startup = 1
"""let g:neocomplcache_enable_ignore_case = 1
"""let g:neocomplcache_enable_smart_case = 1
"""let g:neocomplcache_enable_auto_select = 1
"""let g:neocomplcache_enable_fuzzy_completion = 1
"""let g:neocomplcache_enable_camel_case_completion = 1
"""let g:neocomplcache_enable_underbar_completion = 1
"""let g:neocomplcache_fuzzy_completion_start_length = 1
"""let g:neocomplcache_auto_completion_start_length = 1
"""let g:neocomplcache_manual_completion_start_length = 1
"""let g:neocomplcache_min_keyword_length = 3
"""let g:neocomplcache_min_syntax_length = 3
" complete with workds from any opened file
"""let g:neocomplcache_same_filetype_lists = {}
"""let g:neocomplcache_same_filetype_lists._ = '_'

" Syntastic ------------------------------

" show list of errors and warnings on the current file
"""nmap <leader>e :Errors<CR>
" check also when just opened the file
"""let g:syntastic_check_on_open = 1
" don't put icons on the sign column (it hides the vcs status icons of signify)
"""let g:syntastic_enable_signs = 0
" custom icons (enable them if you use a patched font, and enable the previous 
" setting)
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '⚠'
"let g:syntastic_style_error_symbol = '✗'
"let g:syntastic_style_warning_symbol = '⚠'

" Python-mode ------------------------------

" don't use linter, we use syntastic for that
"""let g:pymode_lint_on_write = 0
"""let g:pymode_lint_signs = 0
" don't fold python code on open
"""let g:pymode_folding = 0
" don't load rope by default. Change to 1 to use rope
"""let g:pymode_rope = 0
" open definitions on same window, and custom mappings for definitions and
" occurrences
"""let g:pymode_rope_goto_definition_bind = ',d'
"""let g:pymode_rope_goto_definition_cmd = 'e'
"""nmap ,D :tab split<CR>:PymodePython rope.goto()<CR>
"""nmap ,o :RopeFindOccurrences<CR>

"*************************************************
" RECOMMED BY ORIGINAL LIST but NOT YET INSTALL

" Tasklist ------------------------------

" show pending tasks list
"""map <F2> :TaskList<CR>

" CtrlP ------------------------------

" file finder mapping
"""let g:ctrlp_map = ',e'
" tags (symbols) in current file finder mapping
"""nmap ,g :CtrlPBufTag<CR>
" tags (symbols) in all files finder mapping
"""nmap ,G :CtrlPBufTagAll<CR>
" general code finder in all files mapping
"""nmap ,f :CtrlPLine<CR>
" recent files finder mapping
"""nmap ,m :CtrlPMRUFiles<CR>
" commands finder mapping
"""nmap ,c :CtrlPCmdPalette<CR>
" to be able to call CtrlP with default search text
"""function! CtrlPWithSearchText(search_text, ctrlp_command_end)
"""    execute ':CtrlP' . a:ctrlp_command_end
"""    call feedkeys(a:search_text)
"""endfunction
" same as previous mappings, but calling with current word as default text
"""nmap ,wg :call CtrlPWithSearchText(expand('<cword>'), 'BufTag')<CR>
"""nmap ,wG :call CtrlPWithSearchText(expand('<cword>'), 'BufTagAll')<CR>
"""nmap ,wf :call CtrlPWithSearchText(expand('<cword>'), 'Line')<CR>
"""nmap ,we :call CtrlPWithSearchText(expand('<cword>'), '')<CR>
"""nmap ,pe :call CtrlPWithSearchText(expand('<cfile>'), '')<CR>
"""nmap ,wm :call CtrlPWithSearchText(expand('<cword>'), 'MRUFiles')<CR>
"""nmap ,wc :call CtrlPWithSearchText(expand('<cword>'), 'CmdPalette')<CR>
" don't change working directory
"""let g:ctrlp_working_path_mode = 0
" ignore these files and folders on file finder
"""let g:ctrlp_custom_ignore = {
"""  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|node_modules)$',
"""  \ 'file': '\.pyc$\|\.pyo$',
"""  \ }

" TabMan ------------------------------

" mappings to toggle display, and to focus on it
"""let g:tabman_toggle = 'tl'
"""let g:tabman_focus  = 'tf'

" Autoclose ------------------------------

" Fix to let ESC work as espected with Autoclose plugin
"""let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}

" DragVisuals ------------------------------

" mappings to move blocks in 4 directions
"""vmap <expr> <S-M-LEFT> DVB_Drag('left')
"""vmap <expr> <S-M-RIGHT> DVB_Drag('right')
"""vmap <expr> <S-M-DOWN> DVB_Drag('down')
"""vmap <expr> <S-M-UP> DVB_Drag('up')
" mapping to duplicate block
"""vmap <expr> D DVB_Duplicate()

" Signify ------------------------------

" this first setting decides in which order try to guess your current vcs
" UPDATE it to reflect your preferences, it will speed up opening files
"""let g:signify_vcs_list = [ 'git', 'hg' ]
" mappings to jump to changed blocks
"""nmap <leader>sn <plug>(signify-next-hunk)
"""nmap <leader>sp <plug>(signify-prev-hunk)
" nicer colors
"""highlight DiffAdd           cterm=bold ctermbg=none ctermfg=119
"""highlight DiffDelete        cterm=bold ctermbg=none ctermfg=167
"""highlight DiffChange        cterm=bold ctermbg=none ctermfg=227
"""highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
"""highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
"""highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227

" Window Chooser ------------------------------

" mapping
"""nmap  -  <Plug>(choosewin)
" show big letters
"""let g:choosewin_overlay_enable = 1

" Airline ------------------------------

"""let g:airline_powerline_fonts = 0
"""let g:airline_theme = 'bubblegum'
"""let g:airline#extensions#whitespace#enabled = 0

" to use fancy symbols for airline, uncomment the following lines and use a
" patched font (more info on the README.rst)
"if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
"endif
"let g:airline_left_sep = '⮀'
"let g:airline_left_alt_sep = '⮁'
"let g:airline_right_sep = '⮂'
"let g:airline_right_alt_sep = '⮃'
"let g:airline_symbols.branch = '⭠'
"let g:airline_symbols.readonly = '⭤'
"let g:airline_symbols.linenr = '⭡'

" End of fisa-vim-config 
" ============================================================================

" Powerline 2016.11.13 (parts are setted above)
"set laststatus=2
set t_Co=256
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

" More natural split opening 2016.11.13
set splitbelow
set splitright

"Color 2016.11.13
colorscheme ron

"Rainbow parentheses 2016.11.14
let g:rainbow_active = 0
map <F5> :RainbowToggle<CR>
let g:rainbow_conf = {
    \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
    \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
    \   'operators': '_,_',
    \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    \   'separately': {
    \       '*': {},
    \       'tex': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
    \       },
    \       'lisp': {
    \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
    \       },
    \       'vim': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    \       },
    \       'html': {
    \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
    \       },
    \       'css': 0,
    \   }
    \}

" High light unwanted spaces in end of line 2017.07.29
highlight ExtraWhitespace ctermbg=darkred guibg=darkcyan
autocmd BufEnter * if &ft != 'help' | match ExtraWhitespace /\s\+$/ | endif
autocmd BufEnter * if &ft == 'help' | match none /\s\+$/ | endif
