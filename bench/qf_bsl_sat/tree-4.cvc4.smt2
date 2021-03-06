(set-logic QF_BSL)
(set-info :source | CVC4 - Andrew Reynolds |)
(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :status unsat)


(declare-sort Loc 0)
;
(declare-datatypes (
                (Node 0)
                ) (
                ((node (left Loc) (right Loc)))
                )
)
(declare-heap (Loc Node))
(declare-const loc0 Loc)
(declare-const data0 Node)


(declare-const root Loc)
(declare-const yl Loc)
(declare-const yr Loc)
(declare-const tl0 Loc)
(declare-const tr0 Loc)
(declare-const tl00 Loc)
(declare-const tr00 Loc)
(declare-const tl000 Loc)
(declare-const tr000 Loc)
(declare-const tl001 Loc)
(declare-const tr001 Loc)
(declare-const tl01 Loc)
(declare-const tr01 Loc)
(declare-const tl010 Loc)
(declare-const tr010 Loc)
(declare-const tl011 Loc)
(declare-const tr011 Loc)
(declare-const tl1 Loc)
(declare-const tr1 Loc)
(declare-const tl10 Loc)
(declare-const tr10 Loc)
(declare-const tl100 Loc)
(declare-const tr100 Loc)
(declare-const tl101 Loc)
(declare-const tr101 Loc)
(declare-const tl11 Loc)
(declare-const tr11 Loc)
(declare-const tl110 Loc)
(declare-const tr110 Loc)
(declare-const tl111 Loc)
(declare-const tr111 Loc)
(declare-const xl Loc)
(declare-const xr Loc)
(declare-const xl0 Loc)
(declare-const xr0 Loc)
(declare-const xl00 Loc)
(declare-const xr00 Loc)
(declare-const xl000 Loc)
(declare-const xr000 Loc)
(declare-const xl001 Loc)
(declare-const xr001 Loc)
(declare-const xl01 Loc)
(declare-const xr01 Loc)
(declare-const xl010 Loc)
(declare-const xr010 Loc)
(declare-const xl011 Loc)
(declare-const xr011 Loc)
(declare-const xl1 Loc)
(declare-const xr1 Loc)
(declare-const xl10 Loc)
(declare-const xr10 Loc)
(declare-const xl100 Loc)
(declare-const xr100 Loc)
(declare-const xl101 Loc)
(declare-const xr101 Loc)
(declare-const xl11 Loc)
(declare-const xr11 Loc)
(declare-const xl110 Loc)
(declare-const xr110 Loc)
(declare-const xl111 Loc)
(declare-const xr111 Loc)

(define-fun dist_tree4 ((y Loc)) Bool (or (and (= y (as nil Loc)) (_ emp Loc Node)) (and (distinct yl yr) (sep (pto y (node yl yr)) (or (and (= yl (as nil Loc)) (_ emp Loc Node)) (sep (pto yl (node tl0 tr0)) (or (and (= tl0 (as nil Loc)) (_ emp Loc Node)) (sep (pto tl0 (node tl00 tr00)) (or (and (= tl00 (as nil Loc)) (_ emp Loc Node)) (sep (pto tl00 (node tl000 tr000)) (and (= tl000 (as nil Loc)) (_ emp Loc Node)) (and (= tr000 (as nil Loc)) (_ emp Loc Node)))) (or (and (= tr00 (as nil Loc)) (_ emp Loc Node)) (sep (pto tr00 (node tl001 tr001)) (and (= tl001 (as nil Loc)) (_ emp Loc Node)) (and (= tr001 (as nil Loc)) (_ emp Loc Node)))))) (or (and (= tr0 (as nil Loc)) (_ emp Loc Node)) (sep (pto tr0 (node tl01 tr01)) (or (and (= tl01 (as nil Loc)) (_ emp Loc Node)) (sep (pto tl01 (node tl010 tr010)) (and (= tl010 (as nil Loc)) (_ emp Loc Node)) (and (= tr010 (as nil Loc)) (_ emp Loc Node)))) (or (and (= tr01 (as nil Loc)) (_ emp Loc Node)) (sep (pto tr01 (node tl011 tr011)) (and (= tl011 (as nil Loc)) (_ emp Loc Node)) (and (= tr011 (as nil Loc)) (_ emp Loc Node)))))))) (or (and (= yr (as nil Loc)) (_ emp Loc Node)) (sep (pto yr (node tl1 tr1)) (or (and (= tl1 (as nil Loc)) (_ emp Loc Node)) (sep (pto tl1 (node tl10 tr10)) (or (and (= tl10 (as nil Loc)) (_ emp Loc Node)) (sep (pto tl10 (node tl100 tr100)) (and (= tl100 (as nil Loc)) (_ emp Loc Node)) (and (= tr100 (as nil Loc)) (_ emp Loc Node)))) (or (and (= tr10 (as nil Loc)) (_ emp Loc Node)) (sep (pto tr10 (node tl101 tr101)) (and (= tl101 (as nil Loc)) (_ emp Loc Node)) (and (= tr101 (as nil Loc)) (_ emp Loc Node)))))) (or (and (= tr1 (as nil Loc)) (_ emp Loc Node)) (sep (pto tr1 (node tl11 tr11)) (or (and (= tl11 (as nil Loc)) (_ emp Loc Node)) (sep (pto tl11 (node tl110 tr110)) (and (= tl110 (as nil Loc)) (_ emp Loc Node)) (and (= tr110 (as nil Loc)) (_ emp Loc Node)))) (or (and (= tr11 (as nil Loc)) (_ emp Loc Node)) (sep (pto tr11 (node tl111 tr111)) (and (= tl111 (as nil Loc)) (_ emp Loc Node)) (and (= tr111 (as nil Loc)) (_ emp Loc Node))))))))))))

(define-fun tree4 ((x Loc)) Bool (or (and (= x (as nil Loc)) (_ emp Loc Node)) (sep (pto x (node xl xr)) (or (and (= xl (as nil Loc)) (_ emp Loc Node)) (sep (pto xl (node xl0 xr0)) (or (and (= xl0 (as nil Loc)) (_ emp Loc Node)) (sep (pto xl0 (node xl00 xr00)) (or (and (= xl00 (as nil Loc)) (_ emp Loc Node)) (sep (pto xl00 (node xl000 xr000)) (and (= xl000 (as nil Loc)) (_ emp Loc Node)) (and (= xr000 (as nil Loc)) (_ emp Loc Node)))) (or (and (= xr00 (as nil Loc)) (_ emp Loc Node)) (sep (pto xr00 (node xl001 xr001)) (and (= xl001 (as nil Loc)) (_ emp Loc Node)) (and (= xr001 (as nil Loc)) (_ emp Loc Node)))))) (or (and (= xr0 (as nil Loc)) (_ emp Loc Node)) (sep (pto xr0 (node xl01 xr01)) (or (and (= xl01 (as nil Loc)) (_ emp Loc Node)) (sep (pto xl01 (node xl010 xr010)) (and (= xl010 (as nil Loc)) (_ emp Loc Node)) (and (= xr010 (as nil Loc)) (_ emp Loc Node)))) (or (and (= xr01 (as nil Loc)) (_ emp Loc Node)) (sep (pto xr01 (node xl011 xr011)) (and (= xl011 (as nil Loc)) (_ emp Loc Node)) (and (= xr011 (as nil Loc)) (_ emp Loc Node)))))))) (or (and (= xr (as nil Loc)) (_ emp Loc Node)) (sep (pto xr (node xl1 xr1)) (or (and (= xl1 (as nil Loc)) (_ emp Loc Node)) (sep (pto xl1 (node xl10 xr10)) (or (and (= xl10 (as nil Loc)) (_ emp Loc Node)) (sep (pto xl10 (node xl100 xr100)) (and (= xl100 (as nil Loc)) (_ emp Loc Node)) (and (= xr100 (as nil Loc)) (_ emp Loc Node)))) (or (and (= xr10 (as nil Loc)) (_ emp Loc Node)) (sep (pto xr10 (node xl101 xr101)) (and (= xl101 (as nil Loc)) (_ emp Loc Node)) (and (= xr101 (as nil Loc)) (_ emp Loc Node)))))) (or (and (= xr1 (as nil Loc)) (_ emp Loc Node)) (sep (pto xr1 (node xl11 xr11)) (or (and (= xl11 (as nil Loc)) (_ emp Loc Node)) (sep (pto xl11 (node xl110 xr110)) (and (= xl110 (as nil Loc)) (_ emp Loc Node)) (and (= xr110 (as nil Loc)) (_ emp Loc Node)))) (or (and (= xr11 (as nil Loc)) (_ emp Loc Node)) (sep (pto xr11 (node xl111 xr111)) (and (= xl111 (as nil Loc)) (_ emp Loc Node)) (and (= xr111 (as nil Loc)) (_ emp Loc Node)))))))))))

;------- f -------
(assert (= yl xl))
(assert (= yr xr))
(assert (= tl0 xl0))
(assert (= tr0 xr0))
(assert (= tl00 xl00))
(assert (= tr00 xr00))
(assert (= tl000 xl000))
(assert (= tr000 xr000))
(assert (= tl001 xl001))
(assert (= tr001 xr001))
(assert (= tl01 xl01))
(assert (= tr01 xr01))
(assert (= tl010 xl010))
(assert (= tr010 xr010))
(assert (= tl011 xl011))
(assert (= tr011 xr011))
(assert (= tl1 xl1))
(assert (= tr1 xr1))
(assert (= tl10 xl10))
(assert (= tr10 xr10))
(assert (= tl100 xl100))
(assert (= tr100 xr100))
(assert (= tl101 xl101))
(assert (= tr101 xr101))
(assert (= tl11 xl11))
(assert (= tr11 xr11))
(assert (= tl110 xl110))
(assert (= tr110 xr110))
(assert (= tl111 xl111))
(assert (= tr111 xr111))
;-----------------

(assert (distinct root (as nil Loc)))
(assert (distinct yl (as nil Loc)))
(assert (distinct yr (as nil Loc)))
(assert (distinct tl0 (as nil Loc)))
(assert (distinct tr0 (as nil Loc)))
(assert (distinct tl00 (as nil Loc)))
(assert (distinct tr00 (as nil Loc)))
(assert (distinct tl01 (as nil Loc)))
(assert (distinct tr01 (as nil Loc)))
(assert (distinct tl1 (as nil Loc)))
(assert (distinct tr1 (as nil Loc)))
(assert (distinct tl10 (as nil Loc)))
(assert (distinct tr10 (as nil Loc)))
(assert (distinct tl11 (as nil Loc)))
(assert (distinct tr11 (as nil Loc)))

(assert (dist_tree4 root))
(assert (not (tree4 root)))

(check-sat)
;;(get-model)
