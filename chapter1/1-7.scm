(load "Square-Roots-by-Newton_s-Method.scm")

(define (sqrt x)
	(sqrt-iterator 1.0 x))

; (display (sqrt 2))
; (display (sqrt 900000000000000000000000000000000000000000000000000000000000000000000000000000000000))

(define (good-enough? old-guess new-guess)
	(> 0.01 
		(/ (abs (- old-guess new-guess)) 
			old-guess)))

(define (sqrt-iterator guess x)
	(if (good-enough? guess (improve guess x))
		(improve guess x)
		(sqrt-iterator (improve guess x) 
						x)))

; (display (sqrt 900000000000000000000000000000000000000000000000000000000000000000000000000000000000))

; (let ((var val) ...) exp1 exp2 ...)
(define (sqrt-iterator old-guess x)
	(let ((new-guess (improve old-guess x)))
		(if (good-enough? old-guess new-guess)
				new-guess
				(sqrt-iterator new-guess x))))

(display (sqrt 900000000000000000000000000000000000000000000000000000000000000000000000000000000000))