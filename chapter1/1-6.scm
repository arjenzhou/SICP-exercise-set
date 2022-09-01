(load "Square-Roots-by-Newton_s-Method.scm")

(define (good-enough? guess x)
	(< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
	(average guess (/ x guess)))

(define (average a b)
	(/ (+ a b) 2))
;;;

(define (new-if predicate then-clause else-clause)
	(cond (predicate then-clause)
		(else else-clause)))

; (display (new-if (= 2 3) 0 5))
; (display (new-if (= 1 1) 0 5))

(define (sqrt-iterator guess x)
	(new-if (good-enough? guess x) 
		guess 
		(sqrt-iterator (improve guess x) x)))

; new-if is a normal procedure. args are fully evaluated before the procedure is called. -> applicative order
; https://stackoverflow.com/questions/1171252/whats-the-explanation-for-exercise-1-6-in-sicp
(display (sqrt-iterator 1.0 3))