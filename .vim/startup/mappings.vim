" Unmap the arrow keys
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

" Mappings for vim-airline
nmap <leader>T :enew<CR>                    " Open a new buffer / tab 
nmap <leader>l :bnext<CR>                   " Move to the next buffer
nmap <leader>h :bprev<CR>                   " Move to the previous buffer
nmap <leader>bq :bp <BAR> bd #<CR>          " Close the current buffer
nmap <leader>bl :ls<CR>                     " List all open buffers and their status

" Mappings for ag.vim
nmap <leader>a :Ag! 

" Toggables
nnoremap <F5> :NERDTreeToggle<CR>

" Mappings for search highlighting (default: enabled)
nnoremap <leader><space> :nohlsearch<CR>    " Manually turn off search highlighting

" Open .*rc files
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>eb :e ~/.bashrc<CR>

" Open other config files
nnoremap <leader>em :e ~/.vim/startup/mappings.vim<CR>

" Custom comma motion mappings
nmap di, f,dT,
nmap ci, f,cT,
"only deletes argument
nmap da, f,ld2F,i,<ESC>l 
"deletes argument and insert
nmap ca, f,ld2F,i,<ESC>a

" Create a new line below cursor in normal mode (without being in insert mode)
nmap g<C-O> o<ESC>k
" g<Ctrl+o> to create a new line above cursor (Ctrl to prevent collission with
" 'go' command
nmap gO O<ESC>j

" Auto-centering text
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

" Delete surrounding characters (for quotes and brackets)
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

" Quick pairing (quotes and brackets)
imap <Leader>' ''<ESC>i
imap <Leader>" ""<ESC>i
imap <Leader>( ()<ESC>i
imap <Leader>[ []<ESC>i
imap <Leader>{ {}<ESC>i
