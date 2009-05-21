(load "ex-2-helper.scm")

(define (make-interval a b) (cons a b))

(define (upper-bound int)
  (if (> (car int) (cdr int))
    (car int)
    (cdr int)))
(define (lower-bound int)
  (if (< (car int) (cdr int))
    (car int)
    (cdr int)))


