#lang scheme

;; recursive 
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (+ (* 2 (f (- n 2)))
            (* 3 (f (- n 3)))))))

;; iterative
(define (f-iter n)
  (define (f-iter-inner n a b c count)
    (cond ((< n 3) n)
          ((> count (- n 3)) a)
          (else (f-iter-inner n
                              (+ a (* 2 b) (* 3 c))
                              a
                              b
                              (+ count 1)))))
  (f-iter-inner n 2 1 0 0))

