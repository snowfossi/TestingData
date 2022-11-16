(set-logic LIA)

(synth-fun f ((a0 Int) (a1 Int) (a2 Int)) Int
    ((Start Int (a0
		 a1
		 a2
                 0
                 1
                 (+ Start Start)
                 (- Start Start)
                 (ite StartBool Start Start)))
     (StartBool Bool ((and StartBool StartBool)
                      (or  StartBool StartBool)
                      (not StartBool)
                      (<=  Start Start)
                      (=   Start Start)
                      (>=  Start Start)))))


(constraint (= (f 22 6 11) 31))
(constraint (= (f 8 26 20) 40))
(constraint (= (f 26 20 1) 21))
(constraint (=> (= (f 22 6 11) 31) (= (f (8 26 20)) 40) (= (f (26 20 1)) 21)))

(check-synth)

