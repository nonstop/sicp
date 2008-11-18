(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (good-enough? old-guess guess)
  (< (abs (- old-guess guess)) 0.000001))

(define (cube-iter old-guess guess x)
  (display old-guess) (display " ") (display guess) (newline)
  (if (good-enough? old-guess guess)
      guess
      (cube-iter guess (improve guess x) x)))


(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cube-root x)
  (cube-iter 0 1.0 x))

(cube-root 27)
(cube-root 8)
(cube-root 0.00000000005) ; invalid result ?
(cube-root 555555555555555555555) ; recursion ?

