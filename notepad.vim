"|
"| File          : ~/.vim/plugin/notepad.vim
"| Last modified : 2012-03-02
"| Author        : Fabien Cazenave
"| Licence       : WTFPL
"|

" Use Ctrl-Q to quit and Ctrl+Shift+V for visual block selection
noremap <C-Q> ZZ
noremap <C-S-v> <C-v>

" The so-called "MS Windows compatibility" settings are loaded by default on
" MS-Windows, but have to be loaded explicitely on other OSes.
source $VIMRUNTIME/mswin.vim
behave mswin

" Use Ctrl-s for saving, also in Insert mode
noremap <C-s> :update<CR>
vnoremap <C-s> <C-c>:update<CR>
inoremap <C-s> <C-o>:update<CR>

" Bonus: +1|-1 with Ctrl-[j|k] (since Ctrl-a and Ctrl-x have be redefined...)
noremap <C-j> <C-x>
noremap <C-k> <C-a>

