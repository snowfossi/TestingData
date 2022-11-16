(set-logic LIA)

(synth-fun f ((a0 Int)) Int
    ((Start Int (a0
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


(constraint (= (f 26) -10))
(constraint (= (f 17) -1))
(constraint (= (f 15) 1))
(constraint (=> (= (f 26) -10) (= (f 17) -1) (= (f 15) 1)))

(check-synth)

