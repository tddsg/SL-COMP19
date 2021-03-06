(set-logic SHID)
(set-info :source | Songbird - https://songbird-prover.github.io/ |)
(set-info :smt-lib-version 2)
(set-info :category "crafted")
(set-info :status unsat)

;; singleton heap

(declare-sort Refnode 0)

(declare-datatypes
 ((node 0))
 (((c_node (left Refnode) (right Refnode)))))

(declare-heap (Refnode node))

;; heap predicates

(define-fun-rec tree ((x_3 Refnode)) Bool
  (or
   (and
    (_ emp Refnode node)
    (= (as nil Refnode) x_3))
   (exists
    ((l_4 Refnode) (r_5 Refnode))
    (sep
     (pto x_3 (c_node l_4 r_5))
     (tree l_4)
     (tree r_5)))))

;; heap predicates

(define-fun-rec tseg ((x_6 Refnode) (y_7 Refnode)) Bool
  (or
   (and
    (_ emp Refnode node)
    (= x_6 y_7))
   (exists
    ((l_8 Refnode) (r_9 Refnode))
    (sep
     (pto x_6 (c_node l_8 r_9))
     (tree l_8)
     (tseg r_9 y_7)))
   (exists
    ((l_10 Refnode) (r_11 Refnode))
    (sep
     (pto x_6 (c_node l_10 r_11))
     (tree r_11)
     (tseg l_10 y_7)))))

(check-sat)

;; entailment: tree(z) * tseg(x,y) * tseg(y,z) |- (exists u. tree(u))

(declare-const z Refnode)
(declare-const x Refnode)
(declare-const y Refnode)

(assert
 (sep
  (tree z)
  (tseg x y)
  (tseg y z)))

(assert
 (not
  (exists
   ((u Refnode))
   (tree u))))

(check-sat)
