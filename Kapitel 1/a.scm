#lang sicp

(define (quadrat x ) (* x x))

(define (remainder a b)
  (- a (* b (floor (/ a b)))))

(define (teilt? a b) 
  (= (remainder a b) 0))

(define (kleinester-teiler n x)
  (cond ((> (quadrat x) n) n)
        ((teilt? n x) x)
        (else (kleinester-teiler n (+ 1 x)))))

(define (prime? n)
  (= (kleinester-teiler n 2) n))


(define (prime-zeit n)
  (newline)
  (display n)
  (start-test n (runtime)))

(define (start-test n startzeit)
  (if (prime? n)
      (ausgabe-laufzeit (- (runtime) startzeit))))

(define (ausgabe-laufzeit laufzeit)
  (display "* * *")
  (display laufzeit))


