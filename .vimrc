
" Basic settings
set encoding=utf-8
set fileencoding=utf-8
set number
syntax on
filetype on
set filetype=python
set omnifunc=syntaxcomplete#Complete
set guifont=Monaco:h20
set guifont=Monospace:h20
set smartindent
colorscheme industry
set nowrap
set colorcolumn=80

"Creates a line under in insert mode
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

"Creates characaters for spaces eol etc.
set list
set listchars=tab:↦→,eol:₿

"creates tab based autocomplete
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>

