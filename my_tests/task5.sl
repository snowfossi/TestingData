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


(constraint (= (f 10 12 18) 72))
(constraint (= (f 3 -3 26) 104))
(constraint (= (f 24 4 24) 96))
(constraint (=> (= (f 10 12 18) 72) (= (f 3 -3 26) 104) (= (f 24 4 24) 96)))

(check-synth)

