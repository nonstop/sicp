; recursive process
(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

; iterative process
(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))
