set nocompatible               " be iMproved

set ignorecase "ic
"set autoindent "ai
"set smartindent "ai
"set cindent "ai
set softtabstop=2 "ts
set shiftwidth=2 "sw
set expandtab "et
set showmatch "sm
set wildmenu "wm
set virtualedit=all
set formatoptions=cqro1j "fo
"set autochdir
syntax on

set hlsearch
set incsearch

" Put just one space between sentences when joining lines (Shift+j).
set nojoinspaces

" Override the ugly Google trailing whitespace highlighting.
set nolist

"Makefiles
au Filetype make set noexpandtab

" Plaintext
au Filetype text setlocal textwidth=70

" Text width
set textwidth=70 "tw
au Filetype c,cpp,python setlocal textwidth=70

" http://vim.wikia.com/wiki/Easily_switch_between_source_and_header_file
" .cc->.h .h->.cc
map <F4> :e %:p:s,.h$,.X123X,:s,.cc$,.h,:s,.X123X$,.cc,<CR>

" http://vim.wikia.com/wiki/Search_for_visually_selected_text
" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

" Persistent undo
set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

map <Space> <PageDown>
"map <Return> <PageUp>

map <F5> :noh<CR>
map <F6> :tabe<CR>\t
map <F7> gT
map <F9> gt
map <F3> :w<CR>
map <F11> :cprev<CR>
map <F12> :cnext<CR>


let c_no_curly_error=1


hi SpellBad term=bold cterm=bold ctermbg=0 ctermfg=4 gui=bold guifg=Blue
hi SpellCap term=bold cterm=bold ctermbg=0 ctermfg=4 gui=bold guifg=Blue


au Filetype cpp syn clear cTodo
