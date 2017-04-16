#lang scheme

#|
 Recursive function for calculating the value of the 
 element in Pascals triangle in row 'row' and column 
 'col' (indexes starting from 0).
 
 Base case: 
 we reach one of the edges, either the left edge:
 the zeroth column, or the right edge: the i:th column 
 in the i:th row.
 
 Recursive case:
 Add two numbers in the previous row, the one in the 
 same column and the one in the column one step to 
 the left.

|# 
(define (pascal row col)
  (cond ((= col 0) 1)
        ((= row col) 1)
        (else (+ (pascal (- row 1) (- col 1))
                 (pascal (- row 1) col)))))


#|
                    r c
         1          0 0 
       1   1        1 1
      1  2  1       2 2
     1  3 3  1      3 3
    1  4 6 4  1     4 4
   1 5 10 10 5 1    5 5
  .      .      .
 .       .       .
.        .        .
|#

#|
 (n choose k) calculates the same value as for the
 k:th element in the n:th row of Pascals triangle.

 Recursive function for calculating (n choose k) 
 according to the formula:
 / n \     1 /n - 1\        / n \
 |   | = --- |     |   and  |   | = 1
 \ k /     k \k - 1/        \ 0 / 
|#
(define (choose n k)
  (if (= k 0)
      1
      (/ (* n (choose (- n 1) (- k 1))) k)))

