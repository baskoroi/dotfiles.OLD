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
