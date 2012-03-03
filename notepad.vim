"|
"| File          : ~/.vim/plugin/notepad.vim
"| Last modified : 2012-03-02
"| Project page  : https://github.com/fabi1cazenave/gnupad
"| Author        : Fabien Cazenave
"| Licence       : WTFPL
"|
"| This configuration file should bring a Notepad-like behavior to Vim.
"| It mostly relies on the built-in "mswin.vim" configuration.
"|
"| Note: Ctrl-S and Ctrl-Q are disabled on a few terminals (= xon/xoff)
"|       like xterm, but they always work on gVim.
"|

" The so-called "MS-Windows compatibility" settings are loaded by default on
" MS-Windows, but have to be loaded explicitely on other OSes.
source $VIMRUNTIME/mswin.vim

" Only difference: Ctrl-Q to quit and Ctrl+B for visual block selection
noremap <C-q> ZZ
noremap <C-b> <C-v>

" Bonus: easy open/find/replace
if has('gui_running')
  " open
  noremap  <C-o>      :browse open<CR>
  vnoremap <C-o> <C-c>:browse open<CR>
  inoremap <C-o> <C-o>:browse open<CR>
  " search
  noremap  <C-f>      :promptfind<CR>
  vnoremap <C-f> <C-c>:promptfind<CR>
  inoremap <C-f> <C-o>:promptfind<CR>
  " replace
  noremap  <C-h>      :promptrepl<CR>
  vnoremap <C-h> <C-c>:promptrepl<CR>
  inoremap <C-h> <C-o>:promptrepl<CR>
else
  " open
  noremap  <C-o>      :edit .<CR>
  vnoremap <C-o> <C-c>:edit .<CR>
  inoremap <C-o> <C-o>:edit .<CR>
  " search
  noremap  <C-f>      /
  vnoremap <C-f> <C-c>/
  inoremap <C-f> <C-o>/
endif

" Bonus: +1|-1 with Ctrl-[j|k] (since Ctrl-a and Ctrl-x have be redefined...)
noremap <C-j> <C-x>
noremap <C-k> <C-a>

