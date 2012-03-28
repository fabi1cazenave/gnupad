Every time one of the shortcuts below does something else than the Notepad equivalent, God kills a kitten. This has to stop. Now.

Common Commands
---------------

        • <kbd>Ctrl+X</kbd> cut  
        • <kbd>Ctrl+C</kbd> copy  
        • <kbd>Ctrl+V</kbd> paste  

        • <kbd>Ctrl+Z</kbd> undo  
        • <kbd>Ctrl+Y</kbd> redo  

        • <kbd>Ctrl+O</kbd> open…  
        • <kbd>Ctrl+S</kbd> save  
        • <kbd>Ctrl+Q</kbd> quit  

        • <kbd>Ctrl+F</kbd> find…  
        • <kbd>Ctrl+H</kbd> find and replace…  
        • <kbd>F3</kbd> <kbd>Shift+F3</kbd> next / previous  

Note:  
        • <kbd>Ctrl+Shift+\*</kbd> shortcuts are not terminal-proof. Avoid them.  
        • <kbd>Ctrl+[S|Q]</kbd> might be caught by your terminal emulator (XON|XOFF)  

Selection and caret movements
-----------------------------

        • <kbd>Shift+[arrow]</kbd> start selection and move caret  

        • <kbd>Ctrl+[left|right]</kbd> move to previous|next word  
        • <kbd>Ctrl+[backspace|delete]</kbd> erase previous|next word  
        • <kbd>Ctrl+[home|end]</kbd> move to beginning|end of document  

Terminal-friendly alternatives:

        • <kbd>Ctrl+Space, [arrow]</kbd> start selection and move caret  

        • <kbd>Alt+[left|right]</kbd> move to previous|next word  
        • <kbd>Alt+[backspace|delete]</kbd> erase previous|next word  
        • <kbd>Alt+[home|end]</kbd> move to beginning|end of document  

The gnupad manifesto
--------------------

The “gnupad” idea is to save kittens by emulating these standard / Notepad-like shortcuts in the three main CLI editors:

 * **Emacs** now implements a [CUA mode](http://www.emacswiki.org/CuaMode)
   but it only affects <kbd>Ctrl+[z|x|c|v]</kbd>  
   — ``notepad.el`` adds support for the other shortcuts and for
   <kbd>Shift+[arrow]</kbd> selections;
 * **Vim** already has Notepad-like settings like ``mswin.vim`` or ``evim``  
   — ``notepad.vim`` extends them with a few keyboard shortcuts;
 * **nano** is the editor that most beginners use  
   — it’s more than time to use standard shortcuts instead of the pico ones.

Expected benefits
-----------------

 * You’ll get used to standard keyboard shortcuts, so you won’t look like a
   idiot any more when you have to write two lines with Notepad / Office / whatever.
 * *Yo mamma* will be able to use Emacs / Vim / nano.
   Well, not Vim — this one is for real men (or patented nerds, I dunno).
 * Bringing the power of Notepad to Emacs and nano.
   Yeah, that’s a remarkable improvement.
 * You won’t pollute your brain with idiotic shortcuts if you have to use
   another editor for some shameful reason.
 * Enlarge your productivity. Save kittens.

Limitations
-----------

 * Emacs:
    * <kbd>F3</kbd> <kbd>Shift+F3</kbd> are not implemented
    * <kbd>Ctrl+Y</kbd> are not implemented because the undo/redo stack sucks like hell (help wanted!)
 * Vim:
    * there’s no limitation with Vim, only possibilities.
 * nano:
    * <kbd>Alt|Ctrl+[arrows]</kbd> caret movements are not implemented
    * <kbd>Shift+[arrow]</kbd> selections don’t work, use <kbd>Ctrl+Space, [arrow]</kbd> instead
    * the 'undo' feature is still experimental

License
-------

WTFPL license. Use at your own risk.

