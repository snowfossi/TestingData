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


(constraint (= (f -4) -14))
(constraint (= (f 22) 12))
(constraint (=> (= (f -4) -14) (= (f 22) 12)))

(check-synth)

