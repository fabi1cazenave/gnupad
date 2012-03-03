"|
"| File          : ~/.vim/plugin/notepad.vim
"| Last modified : 2012-02-29
"| Author        : Fabien Cazenave
"| Licence       : WTFPL
"|

" Work in progress.
" Work in progress.
" Work in progress.
"
function! DoCut()
  if mode()!~#"^[vV\<C-v>]"
    " no active selection: cut whole line
    echo '"+dd'
    "exec '"+dd'
  else
    " cut selection
    echo '"+x'
    exec '"+x'
  endif
  return ':Command'
endfunction

function! DoCopy()
  if mode()!~#"^[vV\<C-v>]"
    " no active selection: cut whole line
    "echo '"+yy'
    yank +
  else
    " cut selection
    "echo '"+y'
    +y
  endif
  return ':Command'
endfunction
"command! -nargs=+ -complete=shellcmd Copy call DoCopy(<q-args>)
"command! -nargs=+ -complete=shellcmd Cut  call DoCut()

function! DoPaste()
  "echo "+gP
  exec """+gP"
endfunction

"function! DoCut()
  "delete +
"endfunction

"function! DoCopy()
  "yank +
"endfunction

"function! DoPaste()
  ""exec 'gP'
  "put +
"endfunction

"command! -range -complete=shellcmd Cut call DoCut()
"command! -range -complete=shellcmd Copy call DoCopy()
"command! -range -complete=shellcmd Paste call DoPaste()
"command! Cut d
"command! Copy y
"command! Paste gP

"function! DoCopy()
  "return '"+y'
"endfunction

"map <C-x> :call DoCut()<CR>
"map <C-c> :call DoCopy()<CR>
"map <C-v> :call DoPaste()<CR>
"map <C-x> :Cut<CR>
"map <C-c> :Copy<CR>
"map <C-v> :Paste<CR>
"map <C-x> "+x
"map <C-c> "+y
"map <C-v> "+gP
noremap <C-x> DoCut()
noremap <C-c> DoCopy()
noremap <C-v> DoPaste()

" +1|-1 with C-[j|k] (useful when no right Ctrl key)
noremap <C-j> <C-x>
noremap <C-k> <C-a>

"command! -nargs=+ -complete=shellcmd ConqueTermTab call conque_term#open(<q-args>, ['tabnew'])


