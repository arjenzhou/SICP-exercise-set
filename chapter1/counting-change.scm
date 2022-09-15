; total number of way to make change for some amount is equal to 
; the number of ways to make change for the amount without using any of the first kind of coin, 
; plus the **number** of ways to make change assuming that we do use the first kind of coin.

; latter **number** is equal to the number of ways to make change for the amount that remains *after* using a coin of the first kind


; takes number of kinds of coins available as input, returns the denomination of the first kind. in desc order
(define (first-denomination kinds-of-coins)
	(cond ((= kinds-of-coins 1) 1)
		((= kinds-of-coins 2) 5)
		((= kinds-of-coins 3) 10)
		((= kinds-of-coins 4) 25)
		((= kinds-of-coins 5) 50)
		))

(define (cc amount kinds-of-coins)
	(cond ((= amount 0) 1)
		((or (< amount 0) (= kinds-of-coins 0)) 0)
		(else (+ (cc amount (- kinds-of-coins 1)) ;not using first kind of coin
				(cc (- amount (first-denomination kinds-of-coins)) kinds-of-coins))))) ;use the first kind of coin. 

(define (count-change amount)
	(cc amount 5))

(display (count-change 100))

;使用第一种零钱的次数为0次，现金a找零方式数目
;加上
;使用第一种零钱的次数为>=1次，现金a找零方式数目
;如果减去1个第一种零钱，那么等价于"使用第一种零钱的次数为>=0次，现金a-d找零方式数目"，亦即"现金a-d用所有面额的找零方式数目，其中d为第一种零钱的面额"