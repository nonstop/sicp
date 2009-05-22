(load "ex-2-helper.scm")
(load "ex-2.7.scm")
(load "ex-2.8.scm")

(define (width-interval int)
  (/ (- (upper-bound int) (lower-bound int)) 2))

(define i1 (make-interval 1 5))
(define i2 (make-interval 1 3))
(print-interval i1)
(display (width-interval i1))(newline)
(print-interval i2)
(display (width-interval i2))(newline)

(newline)
(display (add-interval i1 i2))
(display " width=")
(display (width-interval (add-interval i1 i2)))
(display " widths sum=")
(display (+ (width-interval i1) (width-interval i2)))
(newline)

(display (sub-interval i1 i2))
(display " width=")
(display (width-interval (sub-interval i1 i2)))
(display " widths sub=")
(display (- (width-interval i1) (width-interval i2)))
(newline)

(newline)
(display (mul-interval i1 i2))
(display " width=")
(display (width-interval (mul-interval i1 i2)))
(display " widths mul=")
(display (* (width-interval i1) (width-interval i2)))
(newline)

(display (div-interval i1 i2))
(display " width=")
(display (width-interval (div-interval i1 i2)))
(display " widths div=")
(display (/ (width-interval i1) (width-interval i2)))
(newline)



