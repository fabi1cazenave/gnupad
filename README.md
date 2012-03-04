Because some keyboard shortcuts should **always** be standard:

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

The “gnupad” idea is to emulate these standard / notepad-like shortcuts in the three main CLI editors:

 * **Emacs** now implements a [CUA mode](http://www.emacswiki.org/CuaMode)
   but it only affects <kbd>Ctrl+[z|x|c|v]</kbd>  
   — ``notepad.el`` adds support for the other shortcuts and for
   <kbd>Shift+[arrow]</kbd> selections;
 * **Vim** has a Notepad-like mode with ``vim -e`` or
   [Cream](http://cream.sourceforge.net/)  
   — but you might want to use standard shortcuts in the regular Vim, too;
 * **nano** is the editor that most beginners use  
   — it’s more than time to use standard shortcuts instead of the pico ones.

WTFPL license. Use at your own risk.

