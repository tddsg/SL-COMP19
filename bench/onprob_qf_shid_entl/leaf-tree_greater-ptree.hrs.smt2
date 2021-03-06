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
    (lroot ((x1 Refnode3) (x2 Refnode3) (x3 Refnode3)) Bool)
    (rtree ((x1 Refnode3) (x2 Refnode3) (x3 Refnode3)) Bool)
    (lltree ((x1 Refnode3) (x2 Refnode3) (x3 Refnode3) (x4 Refnode3)) Bool)
    (tree ((x1 Refnode3) (x2 Refnode3)) Bool)
    (grtree ((x1 Refnode3) (x2 Refnode3) (x3 Refnode3)) Bool)
    (ltree ((x1 Refnode3) (x2 Refnode3) (x3 Refnode3)) Bool))
  ((pto x1 (c_node3 (as nil Refnode3) (as nil Refnode3) x2))
    (exists ((r Refnode3)) (sep (pto x1 (c_node3 x2 r x3)) (tree r x1)))
    (or
      (exists ((r Refnode3)) (sep (pto x1 (c_node3 x3 r x2)) (parent x3 x1) (tree r x1)))
      (exists
        ((l Refnode3) (r Refnode3))
        (sep (pto x1 (c_node3 l r x2)) (rtree l x1 x3) (tree r x1))))
    (or
      (exists
        ((p Refnode3) (r Refnode3))
        (sep (pto x1 (c_node3 x2 r p)) (tree r x1) (lltree p x1 x3 x4)))
      (exists
        ((r Refnode3))
        (sep (pto x1 (c_node3 x2 r x3)) (tree r x1) (lroot x3 x1 x4))))
    (or
      (pto x1 (c_node3 (as nil Refnode3) (as nil Refnode3) x2))
      (exists
        ((y Refnode3) (z Refnode3))
        (sep (pto x1 (c_node3 y z x2)) (tree y x1) (tree z x1))))
    (exists
      ((l Refnode3) (r Refnode3))
      (sep (pto x1 (c_node3 l r x2)) (rtree l x1 x3) (tree r x1)))
    (exists
      ((p Refnode3))
      (sep (pto x1 (c_node3 (as nil Refnode3) (as nil Refnode3) p)) (lltree p x1 x2 x3)))))

(declare-const x1 Refnode3)
(declare-const x2 Refnode3)
(declare-const x3 Refnode3)

(assert (ltree x1 x2 x3))

(assert (not (grtree x2 x3 x1)))

(check-sat)