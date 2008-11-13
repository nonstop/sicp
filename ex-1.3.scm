(define (square x)
  (* x x))

(define (max x y)
  (if (> x y) x y))

(define (main a b c)
  (+ (square (if (or (>= a b) (>= a c)) a 0))
     (square (if (or (>= b a) (>= b c)) b 0))
     (square (if (or (>= c a) (>= c b)) c 0)))
  )
