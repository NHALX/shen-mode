
(define emacs-shen.init/shen-pro
  -> (do
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
      (set *hush* false)))

(define emacs-shen.init/shen-free
  -> (let
        DIR (value emacs-shen.*buffer-folder*)
      (do
       (emacs-shen.cd DIR)
       (cd DIR))))

(define emacs-shen.cd
  X -> unit)

(define emacs-shen.lisp-cd
  X -> (lisp.eval
        (lisp.read-from-string
         (make-string
          "(SETQ *DEFAULT-PATHNAME-DEFAULTS* #P~R)"
          X))))


(set *maximum-print-sequence-size* 1000)

\*
(if (= "Shen 19.2" (value *version*))
    (emacs-shen.init/shen-free)
    (emacs-shen.init/shen-pro))
*\
