(define (dec x)
	(- x 1))

(define (inc x)
	(+ x 1))

(define (plus a b)
	(if (= a 0) 
		b 
		(plus (dec a) (inc b))))
; (trace plus)

(display (plus 4 5))

(define (plus a b)
	(if (= a 0) 
		b
		(inc (plus (dec a) b))))

; (trace plus)

(display (plus 4 5))