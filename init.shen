\\ Set tk.*home* to where your TCL/tk lives. 
\\ Set *browser* to your browser of choice. 
\\ Set *cores* to the number of cores in your computer.
\\ Any expressions appended to the end of this file will be evaluated at startup.

(set *hush* true)
(set tk.*home* "C:/TCL/BIN/WISH86.EXE")
(set *browser* "C:/Program Files/Internet Explorer/iexplore.exe")
(set *cores* 1)
(tk.open-tk)
(tk.event-loop)
(tk.update-sp)
(set *hush* false) 
