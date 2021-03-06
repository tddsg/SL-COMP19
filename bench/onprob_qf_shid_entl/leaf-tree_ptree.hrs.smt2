(set-logic QF_SHID)

(set-info :source |
  Jens Katelaan, Harrsh, https://github.com/katelaan/harrsh/
|)
(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :status unsat)
(set-info :version "2019-02-20")

(declare-sort Refnode3 0)

(declare-datatypes
  ((node3 0))
  (((c_node3 (f1 Refnode3) (f2 Refnode3) (f3 Refnode3)))))

(declare-heap (Refnode3 node3))

(define-funs-rec
  ((parent ((x1 Refnode3) (x2 Refnode3)) Bool)
    (ptree ((x1 Refnode3) (x2 Refnode3) (x3 Refnode3)) Bool)
    (rtree ((x1 Refnode3) (x2 Refnode3) (x3 Refnode3) (x4 Refnode3)) Bool)
    (treep ((x1 Refnode3) (x2 Refnode3)) Bool)
    (leafTree ((x1 Refnode3) (x2 Refnode3) (x3 Refnode3)) Bool)
    (rroot ((x1 Refnode3) (x2 Refnode3) (x3 Refnode3)) Bool))
  ((pto x1 (c_node3 (as nil Refnode3) (as nil Refnode3) x2))
    (or
      (exists
        ((r Refnode3))
        (sep (pto x1 (c_node3 x3 r x2)) (parent x3 x1) (treep r x1)))
      (exists
        ((l Refnode3) (r Refnode3))
        (sep (pto x1 (c_node3 l r x2)) (ptree l x1 x3) (treep r x1))))
    (or
      (exists
        ((p Refnode3) (r Refnode3))
        (sep (pto x1 (c_node3 x2 r p)) (treep r x1) (rtree p x1 x3 x4)))
      (exists
        ((r Refnode3))
        (sep (pto x1 (c_node3 x2 r x3)) (treep r x1) (rroot x3 x1 x4))))
    (or
      (pto x1 (c_node3 (as nil Refnode3) (as nil Refnode3) x2))
      (exists
        ((y Refnode3) (z Refnode3))
        (sep (pto x1 (c_node3 y z x2)) (treep y x1) (treep z x1))))
    (exists
      ((p Refnode3))
      (sep (pto x1 (c_node3 (as nil Refnode3) (as nil Refnode3) p)) (rtree p x1 x2 x3)))
    (exists ((r Refnode3)) (sep (pto x1 (c_node3 x2 r x3)) (treep r x1)))))

(declare-const x1 Refnode3)
(declare-const x2 Refnode3)
(declare-const x3 Refnode3)

(assert (leafTree x1 x2 x3))

(assert (not (ptree x2 x3 x1)))

(check-sat)