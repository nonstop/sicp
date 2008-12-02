; utility function
(define (f-sum a b c)
  (+ a (* 2 b) (* 3 c)))

; recursive process
(define (f n)
  (if (< n 3) n
    (f-sum (f (- n 1)) (f (- n 2)) (f (- n 3)))))

; iterative process
(define (f-iter n)
  (define (f-inner n i s1 s2 s3)
    (display n) (display '" i=") (display i) (display '" s1=")
    (display s1) (display '" s2=")
    (display s2) (display '" s3=")
    (display s3) (newline)
        (if (= i n) (f-sum s1 s2 s3)
          (f-inner n (+ i 1) (f-sum s1 s2 s3) s1 s2))
    )
  (if (< n 3) n
      (f-inner n 3 2 1 0))
  )


