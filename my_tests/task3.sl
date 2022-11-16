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


(constraint (= (f 13 -1 12) 1))
(constraint (= (f 10 29 1) 12))
(constraint (= (f 16 14 21) -8))
(constraint (=> (= (f 13 -1 12) 1) (= (f 10 29 1) 12) (= (f 16 14 21) -8)))

(check-synth)

