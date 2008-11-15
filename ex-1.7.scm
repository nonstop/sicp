(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.000001))

(define (sqrt-iter old-guess guess x)
  (display old-guess) (display " ") (display guess) (newline)
  (if (good-enough? guess x)
      guess
      (sqrt-iter guess (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 0 1.0 x))

(sqrt 2)
(sqrt 0.00000000005) ; invalid result
(sqrt 555555555555555555555) ; recursion

; this is the solution - no recursion and valid result
(define (good-enough? old-guess guess)
  (< (abs (- old-guess guess)) 0.000001))

(define (sqrt-iter old-guess guess x)
  (display old-guess) (display " ") (display guess) (newline)
  (if (good-enough? old-guess guess)
      guess
      (sqrt-iter guess (improve guess x) x)))

