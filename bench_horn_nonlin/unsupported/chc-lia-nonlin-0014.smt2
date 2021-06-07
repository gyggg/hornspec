;; Original file: harmonic-e.smt2
(set-logic HORN)
(declare-fun P0 (Int) Bool)
(declare-fun P1 (Int Int) Bool)
(declare-fun P2 (Int Int Int) Bool)
(declare-fun f (Int Int) Bool)

(assert (forall ((x1 Int) (x2 Int) (x0 Int)) (=> (and (P0 x1) (P1 x1 x2) (or (< x2 0) (> x2 0)) (<= (+ 1 x1) x2) (= x0 0)) (P2 x1 x2 x0))))
(assert (forall ((x0 Int) (x2 Int) (x1 Int)) (=> (and (P0 x1) (P1 x1 x2) (or (< x2 0) (> x2 0)) (>= x1 x2) (= x1 (+ x0 x2))) (P0 x0))))
					;(assert (forall ((x0 Int) (x2 Int) (x1 Int)) (=> (and (P0 x1) (P1 x1 x2) (or (< x2 0) (> x2 0)) (>= x1 x2) (= x1 (+ x0 x2))) (P1 x0 x2))))
(assert (forall ((x0 Int) (x2 Int) (x1 Int)) (=> (and (P0 x1) (f x1 x2)) (P1 x0 x2))))
(assert (forall ((x1 Int) (x3 Int) (x0 Int) (x2 Int) (x4 Int)) (=> (and (P0 x1) (P1 x1 x3) (P2 x2 x3 x4) (or (< x3 0) (> x3 0)) (>= x1 x3) (= x1 (+ x2 x3)) (= x0 (+ 1 x4))) (P2 x1 x3 x0))))
(assert (forall ((x0 Int)) (=> (and (P0 x0) (P1 x0 0)) false)))
(check-sat)
