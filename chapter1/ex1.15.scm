#lang scheme


(define (sine angle)
  (define (cube x) (* x x x))
  (define (p x) (- (* 3 x) (* 4 (cube x))))
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))


#|
Answer:
The number of calls to 'sine' doubles every time, and since

	12.15/(3^x) < 0.01 
<=> 
	3^x > 1215 
<=> 
	x > log3(1215) 
<=> 
	x > 6.464...
 => 
 	n = ceil(6.464...) = 7

therefore 'sine' is called 2^7 = 128 times.
|#

