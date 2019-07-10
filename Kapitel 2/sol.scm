
2.1


(define (get-sign-rat x y)
  (if (> (* x y) 0)
      +
      -))

(define (const-rat x y)
  (let ((g (gcd x y)) (sign (get-sign-rat x y)))
    (cons (/ (sign x) g) (/ (abs y) g))))



