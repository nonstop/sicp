(load "ex-2-helper.scm")
(load "ex-2.7.scm")

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (lower-bound y))
                 (- (upper-bound x) (upper-bound y))))

