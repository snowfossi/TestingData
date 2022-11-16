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


(constraint (= (f 1 28 -5) 10))
(constraint (= (f 18 28 18) -13))
(constraint (= (f 26 16 1) 4))
(constraint (=> (= (f 1 28 -5) 10) (= (f 18 28 18) -13) (= (f 26 16 1) 4)))

(check-synth)

