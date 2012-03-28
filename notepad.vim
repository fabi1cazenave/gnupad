"|
"| File          : ~/.vim/plugin/notepad.vim
"| Last modified : 2012-03-04
"| Project page  : https://github.com/fabi1cazenave/gnupad
"| Author        : Fabien Cazenave
"| Licence       : WTFPL
"|
"| This configuration file should bring a Notepad-like behavior to Vim.
"| It mostly relies on the built-in "mswin.vim" configuration.
"|
"| Note: Ctrl-S and Ctrl-Q might be disabled in your terminal emulator
"|       (= XON/XOFF). You can add this to your ~/.bashrc to prevent it:
"|           stty -ixon
"|

" The so-called "MS-Windows compatibility" settings...
"   * are loaded by default on MS-Windows;
"   * are useless on OSX -- at least with MacVim;
"   * have to be loaded explicitely on other *NIXes.
source $VIMRUNTIME/mswin.vim

" Recommended settings:
"set nocompatible   " required for a multi-level undo/redo stack
"set mouse=a        " enables mouse selection

" Main difference: Ctrl-Q = quit, Ctrl+B = visual block selection
noremap  <C-q> ZZ
vnoremap <C-q> <Esc>ZZ
inoremap <C-q> <Esc>ZZ
noremap  <C-b> <C-v>
vnoremap <C-b> <C-v>

" Next/previous with F3/Shift-F3
noremap  <F3> n
vnoremap <F3> <C-c>n
inoremap <F3> <C-o>n
noremap  <S-F3> N
vnoremap <S-F3> <C-c>N
inoremap <S-F3> <C-o>N

" Easy open/find/replace
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

" Allow nobreak-space in insert|cmdline modes
if has('gui')
  iunmap <M-Space>
  cunmap <M-Space>
endif

" Ctrl-A and Ctrl-X have been redefined => +1/-1 with Ctrl-J/K
noremap <C-j> <C-x>
noremap <C-k> <C-a>

" Bonus: word-by-word caret movements
"finish

" Ctrl+arrow/backspace/delete
inoremap <C-BackSpace> <C-o>db
vnoremap <C-BackSpace> <C-c>db
inoremap <C-Delete>    <C-o>dw
vnoremap <C-Delete>    <C-c>dw
inoremap <C-Left>      <C-o>b
vnoremap <C-Left>      <C-c>b
inoremap <C-Right>     <C-o>w
vnoremap <C-Right>     <C-c>w
inoremap <C-Up>        <C-o>{
vnoremap <C-Up>        <C-c>{
inoremap <C-Down>      <C-o>}
vnoremap <C-Down>      <C-c>}

" Alt+arrow/backspace/delete -- meta sets the 8th bit
inoremap <M-BackSpace> <C-o>db
inoremap <M-Delete>    <C-o>dw
inoremap <M-Left>      <C-o>b
inoremap <M-Right>     <C-o>w
inoremap <M-Up>        <C-o>{
inoremap <M-Down>      <C-o>}

map <M-Left>  B
map <M-Right> W
map <M-Up>    {
map <M-Down>  }

" Alt+arrow/backspace/delete -- meta sends escape
inoremap <Esc><BackSpace> <C-o>db
inoremap <Esc><Delete>    <C-o>dw
inoremap <Esc><Left>      <C-o>b
inoremap <Esc><Right>     <C-o>w
inoremap <Esc><Up>        <C-o>{
inoremap <Esc><Down>      <C-o>}

map <Esc><Left>  B
map <Esc><Right> W
map <Esc><Up>    {
map <Esc><Down>  }

