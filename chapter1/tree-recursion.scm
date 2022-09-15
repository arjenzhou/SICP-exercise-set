(define (fib n)
	(cond 
		((= n 0) 0)
		((= n 1) 1)
		(else (+ (fib (- n 1)) (fib (- n 2))))))

(display (fib 10))

; Fib(1) = 1
; Fib(0) = 0
; a <- a + b
; b <- a

(define (fib n)
	(fib-iter 1 0 n))

(define (fib-iter a b count)
	(if (= count 0) b
		(fib-iter (+ a b) a (- count 1))))

(display (fib 10))