Because some keyboard shortcuts should **always** be standard:

        • <kbd>Ctrl+x</kbd> cut  
        • <kbd>Ctrl+c</kbd> copy  
        • <kbd>Ctrl+v</kbd> paste  

        • <kbd>Ctrl+z</kbd> undo  
        • <kbd>Ctrl+y</kbd> redo  

        • <kbd>Ctrl+o</kbd> open…  
        • <kbd>Ctrl+s</kbd> save  
        • <kbd>Ctrl+q</kbd> quit  

        • <kbd>Ctrl+f</kbd> find…  
        • <kbd>Ctrl+g</kbd> find and replace…  
        • <kbd>F3</kbd> next  
        • <kbd>Shift+F3</kbd> previous  

The “gnupad” idea is to emulate these standard / notepad-like shortcuts in the three main CLI editors:

 * **Emacs** now implements a [CUA mode](http://www.emacswiki.org/CuaMode)
   but it only affects <kbd>Ctrl+[z|x|c|v]</kbd>
   — ``notepad.el`` adds support for the other shortcuts;
 * **Vim** has a Notepad-like mode with [Cream](http://cream.sourceforge.net/) or ``vim -e``
   — but you might want to use standard shortcuts in the regular Vim, too;
 * **nano** is the editor that most beginners use
   — it’s more than time to use standard shortcuts instead of the pico ones.

