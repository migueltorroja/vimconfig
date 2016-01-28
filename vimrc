execute pathogen#infect()

syntax on
filetype plugin indent on

set background=dark
set ignorecase
let mapleader="_"
if has("cscope")
	set csto=0
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
	    cs add cscope.out
	" else add database pointed to by environment
	elseif $CSCOPE_DB != ""
	    cs add $CSCOPE_DB
	endif
	set csverb

	set cscopequickfix=s-,c-,d-,i-,t-,e-,g-,f-

	nmap <Leader>cs :cs find s <C-R>=expand("<cword>")<CR><CR>
	nmap <Leader>cg :cs find g <C-R>=expand("<cword>")<CR><CR>
	nmap <Leader>cc :cs find c <C-R>=expand("<cword>")<CR><CR>
	nmap <Leader>ct :cs find t <C-R>=expand("<cword>")<CR><CR>
	nmap <Leader>ce :cs find e <C-R>=expand("<cword>")<CR><CR>
	nmap <Leader>cf :cs find f <C-R>=expand("<cfile>")<CR><CR>
	nmap <Leader>ci :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	nmap <Leader>cd :cs find d <C-R>=expand("<cword>")<CR><CR>

endif

augroup Identation
    autocmd!
    autocmd FileType c\|cpp\|python set tabstop=4
    autocmd FileType c\|cpp\|python set expandtab
    autocmd FileType c\|cpp\|python set shiftwidth=4
augroup END

set lcs=tab:>-,trail:-
set list

nmap <Leader>cn :cnext<CR>
nmap <Leader>cp :cprevious<CR>
