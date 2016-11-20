(package emacs-shen []

 (define toggle-tc
   { A --> boolean }
   _ -> (if (tc?)
            (tc -)
            (tc +)))

 (datatype sequent-rules

             X : symbol;
   _________________________________
        (destroy X) : symbol;

          X : (list symbol);
   _________________________________
     (preclude X) : (list symbol);

   _________________________________
     (value shen.*spy*) : boolean;

   __________________________________
     (value shen.*step*) : boolean;)


 (define toggle-spy
   { A --> boolean }
   _ -> (if (value shen.*spy*)
            (spy -)
            (spy +)))


 (define toggle-step
   { A --> boolean }
   _ -> (if (value shen.*step*)
            (step -)
            (step +)))


 (define delete-function
   { symbol --> symbol }
   S -> (destroy S))


 (define delete-type-theory
   { boolean --> symbol
             --> (list symbol) }

   false X -> (preclude [X])
   true  X -> (preclude-all-but [X sequent-rules]))
)
