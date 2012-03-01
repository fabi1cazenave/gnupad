"|
"| File          : ~/.vim/plugin/notepad.vim
"| Last modified : 2012-02-29
"| Author        : Fabien Cazenave
"| Licence       : WTFPL
"|

" clipboard: cut/copy/paste
" (requires vim-gtk or vim-gnome with Ubuntu 11.04)
map <C-x> "+x
map <C-c> "+y
map <C-v> "+P

" +1|-1 with C-[j|k] (useful when no right Ctrl key)
noremap <C-j> <C-x>
noremap <C-k> <C-a>

