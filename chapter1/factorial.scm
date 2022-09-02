(define (factorial n)
	(if (= n 1)
		1
		(* n (factorial (- n 1)))))

; (display (factorial 3))

; linear recursive process -> in the computation of n!, length of chains of deferred multiplcations. 
; amount of information needed ot keep track of grows linearly with n

(define (factorial n)
	(define (fact-iter product counter max-count)
		(if (> counter max-count)
			product
			(fact-iter (* product counter) (+ 1 counter) max-count)))
	(fact-iter 1 1 n))

; (display (factorial 3))

; linear iterative process -> in computing n!, the number of steps required grows linearly with n.