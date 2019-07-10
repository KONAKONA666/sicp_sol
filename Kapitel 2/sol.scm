
2.1


(define (get-sign-rat x y)
  (if (> (* x y) 0)
      +
      -))

(define (const-rat x y)
  (let ((g (gcd x y)) (sign (get-sign-rat x y)))
    (cons (/ (sign x) g) (/ (abs y) g))))


2.2


(define (const-line x y)
  (cons x y))

(define (y-cordinate x)
  (car x))

(define (x-cordinate x)
  (cdr x))

(define (mid-point x)
  (/ (+ (x-cordinate y-cordinate))))

(define (print-line x)
  (newline)
  (display "(")
  (display (x-cordinate x))
  (display ",")
  (display (y-cordinate x))
  (display ")"))
