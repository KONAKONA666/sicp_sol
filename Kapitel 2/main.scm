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


(define (const-line x y)
  (cons x y))

(define (mid-point x)
  (/ (+ (x-cordinate y-cordinate))))

(define (print-line x)
  (newline)
  (display "(")
  (display (x-cordinate x))
  (display ",")
  (display (y-cordinate x))
  (display ")"))

(define (rec-first-cordinate x)
  (car x))

(define (rec-second-cordinate x)
  (cdr x))

(define (x-cordinate x)
  (car x))

(define (y-cordinate x)
  (cdr x))


(define (const-rectangle x y)
  (cons x y))

(define (calc-area-rectangle x)
  (* (width x) (height x)))

(define (width x)
  (abs (- (rec-first-cordinate (x-cordinate x))
          (rec-second-cordinate (x-cordinate x)))))


(define (height x)
  (abs (- (rec-first-cordinate (y-cordinate x))
          (rec-second-cordinate (y-cordinate x)))))

(define (print-row symbol n)
    (if (= n 0)
        (newline)
        ((lambda (x) (display symbol) (print-row symbol (- n 1))) 0)))

(define (print-rectangle x)
  (define (print-iterator symbol n k f)
    (print-row symbol n)
    (f (+ k 1)))
  (lambda (i)
   (let ((w (width x)) (h (height x)))
     (define (print-loop curr)
       (cond ((= curr h)
              (newline))
             ((or (= curr 0) (= curr (- h 1)))
              (print-iterator "-" w (+ curr 1) print-loop))
             (else
              (print-iterator "|" w (+ curr 1) print-loop))))
     (print-loop 0))))












