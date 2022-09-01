(define (sqrt-iterator guess x)
	(if (good-enough? guess x) 
		guess 
	    (sqrt-iterator (improve guess x) x)))

(define (good-enough? guess x)
	(< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
	(average guess (/ x guess)))

(define (average a b)
	(/ (+ a b) 2))

; (display (average 1 2))
; (display (improve 2 2))
; (display (good-enough? 1.111 1.11))
; (display (sqrt-iterator 1.0 3))