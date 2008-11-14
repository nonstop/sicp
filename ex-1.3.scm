(define (smart_square x)
  (if x (* x x) 0))

(define (summator a b c)
  (+ (smart_square a) (smart_square b) (if (and a b) 0 (smart_square c)))
  )

(define (match? x y1 y2)
  (if (or (>= x y1) (>= x y2)) x #f)
  )

(define (main a b c)
  (summator (match? a b c) (match? b a c) (match? c a b))
  )

