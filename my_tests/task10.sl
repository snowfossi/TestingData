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


(constraint (= (f 26 9) -3))
(constraint (= (f 27 20) -14))
(constraint (=> (= (f 26 9) -3) (= (f 27 20) -14)))

(check-synth)

