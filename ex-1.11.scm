; recursive process
(define (f n)
  (cond ((< n 3) n)
        (else (+ 
                (f (- n 1)) 
                (* 2 (f (- n 2))) 
                (* 3 (f (- n 3))))
              )))

; iterative process
(define (f-iter n)
  (define (f-inner n i s2 s3)
    (cond (> i (- n 2)) (+ i s2 s3)
          (else (f-inner n (+ i 1) (* 2 s2) (* 3 s3))))
    )
  (f-inner n 0 0 0)
  )

