" Unmap the arrow keys {{{
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>
" }}}

" Mappings for vim-airline {{{
nnoremap <leader>T :enew<CR>                    " Open a new buffer / tab 
nnoremap <leader>l :bnext<CR>                   " Move to the next buffer
nnoremap <leader>h :bprev<CR>                   " Move to the previous buffer
nnoremap <leader>bq :bp <BAR> bd #<CR>          " Close the current buffer
nnoremap <leader>bl :ls<CR>                     " List all open buffers and their status
" }}}

" Mappings for ag.vim {{{
nnoremap <leader>a :Ag! 
" }}}

" Toggables {{{
nnoremap <F4> :GundoToggle<CR>
nnoremap <F5> :NERDTreeToggle<CR>
" }}}

" Mappings for search highlighting (default: enabled) {{{
nnoremap <leader><space> :nohlsearch<CR>    " Manually turn off search highlighting
" }}}

" Open (and source) .*rc files and other config files {{{
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>eb :e ~/.bashrc<CR>
nnoremap <leader>em :e ~/.vim/startup/mappings.vim<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
" }}}

" Custom comma motion mappings {{{
nmap di, f,dT,
nmap ci, f,cT,
"only deletes argument
nmap da, f,ld2F,i,<ESC>l 
"deletes argument and insert
nmap ca, f,ld2F,i,<ESC>a
" }}}

" Add newline without changing modes {{{
" Create a new line below cursor in normal mode (without being in insert mode)
nmap g<C-O> o<ESC>k
" g<Ctrl+o> to create a new line above cursor (Ctrl to prevent collission with
" 'go' command
nmap gO O<ESC>j
" }}}

" Auto-centering text {{{
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz
" }}}

" Delete surrounding characters (for quotes and brackets) {{{
noremap ds{ F{xf}x
noremap cs{ F{xf}xi
noremap ds" F"x,x
noremap cs" F"x,xi
noremap ds' F'x,x
noremap cs' F'x,xi
noremap ds( F(xf)x
noremap cs( F(xf)xi
noremap ds) F(xf)x
noremap cs) F(xf)xi
" }}}

" Quick pairing (quotes and brackets) {{{
imap <Leader>' ''<ESC>i
imap <Leader>" ""<ESC>i
imap <Leader>( ()<ESC>i
imap <Leader>[ []<ESC>i
imap <Leader>{ {}<ESC>i
" }}}

" WRAPPING word(s) in 'quotes', [brackets], etc. {{{
" 1. In normal mode: for selections from either sides
nnoremap <leader>w' viw<esc>bi'<esc>ea'<esc>
nnoremap <leader>w" viw<esc>bi"<esc>ea"<esc>
nnoremap <leader>w( viw<esc>bi(<esc>ea)<esc>
nnoremap <leader>w[ viw<esc>bi[<esc>ea]<esc>
" 2. In visual mode: For forward selections (from left to right)
vnoremap <leader>w' <esc>i'<esc>hv`<vi'<esc>
vnoremap <leader>w" <esc>i"<esc>hv`<vi"<esc>
vnoremap <leader>w( <esc>i)<esc>hv`<vi(<esc>
vnoremap <leader>w) <esc>i)<esc>hv`<vi(<esc>
vnoremap <leader>w[ <esc>i]<esc>hv`<vi[<esc>
vnoremap <leader>w] <esc>i]<esc>hv`<vi[<esc>
" 3. In visual mode: For backward selections (from right to left)
vnoremap <leader>b' <esc>i'<esc>v`><esc>ea'<esc>
vnoremap <leader>b" <esc>i"<esc>v`><esc>ea"<esc>
vnoremap <leader>b( <esc>i(<esc>v`><esc>ea)<esc>
vnoremap <leader>b) <esc>i(<esc>v`><esc>ea)<esc>
vnoremap <leader>b[ <esc>i[<esc>v`><esc>ea]<esc>
vnoremap <leader>b] <esc>i[<esc>v`><esc>ea]<esc>
" }}}
