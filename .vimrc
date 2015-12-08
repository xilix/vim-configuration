execute pathogen#infect()

syntax on
filetype plugin indent on
colorscheme onedark
set laststatus=2
set runtimepath^=~/.vim/bundle/ctrlp.vim

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:gitgutter_sign_column_always = 1

" set tabs to 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" undotree
if has("persistent_undo")
  set undodir=~/.undodir/
  set undofile
endif
nnoremap <F5> :UndotreeToggle<cr>

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" toggle line numbers with C-b
" number -> relative -> none
function! NumberToggle()
  if(!&relativenumber && &number)
    set number
    set relativenumber
  elseif(!&relativenumber && !&number)
    set number
    set norelativenumber
  elseif(&relativenumber && &number)
    set nonumber
    set norelativenumber
  endif
endfunc
nnoremap <C-b> :call NumberToggle()<cr>
set norelativenumber
set number

" file types adjustments
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au BufNewFile,BufRead *.less set filetype=less

" look for jscsrv fo linter
let g:syntastic_javascript_checkers=['jscs']
function! JavascriptLinter(curpath)
  let parent=1
  let local_path=a:curpath
  let local_jscs=local_path . '.jscsrc'

  while parent <= 255
    let parent = parent + 1
    if filereadable(local_jscs)
      return ['jscs']
    endif
    let local_path = local_path . "../"
    let local_jscs = local_path . '.jscsrc'
  endwhile

  unlet parent local_jscs

  return ['jshint']
endfunction
let g:syntastic_javascript_checkers=JavascriptLinter(getcwd() . "/")

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
