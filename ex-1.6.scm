(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause
        (else else-clause))))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
; recursive call sqrt-iter -> new-if -> sqrt-iter -> new-if -> ...
;  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt-iter guess x)
  (cond ((good-enough? guess x) guess)
      (else (sqrt-iter (improve guess x) x))))


(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))


(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 2)

