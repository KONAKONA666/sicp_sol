#lang sicp


(define (get-sign-rat x y)
  (if (> (* x y) 0)
      +
      -))

(define (const-rat x y)
  (let ((g (gcd x y)) (sign (get-sign-rat x y)))
    (cons (/ (sign x) g) (/ (abs y) g))))

(define (numer x)
  (car x))

(define (denom x)
  (cdr x))

(define (gcd x y)
  (if (= y 0)
      x
      (gcd y (remainder x y))))

(define (add-rat x y)
  (const-rat (+ (* (numer x) (denom y)) (* (numer y) (denom x))) (* (denom x) (denom y))))

(define (subs-rat x y)
  (const-rat (- (* (numer x) (denom y)) (* (numer y) (denom x))) (* (denom x) (denom y))))

(define (mul-rat x y)
  (const-rat  (* (numer x) (numer y)) (* (denom x) (denom y))))

(define (div-rat x y)
  (const-rat  (* (numer x) (denom y)) (* (denom x) (numer y))))

(define (eual-rat? x y)
  (= (* (numer x) (denom y)) (* (numer y) (denom y))))



(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))







