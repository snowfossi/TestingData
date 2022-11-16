(set-logic LIA)

(synth-fun f ((a0 Int) (a1 Int)) Int
    ((Start Int (a0
		 a1
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


(constraint (= (f 28 -5) 1))
(constraint (= (f 3 -4) 2))
(constraint (= (f 17 11) 17))
(constraint (=> (= (f 28 -5) 1) (= (f 3 -4) 2) (= (f 17 11) 17)))

(check-synth)

