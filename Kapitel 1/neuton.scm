#lang sicp


(define dx 0.0001)


(define (fixpoint f approx)
  (define tolerance 0.00001)
  (define (close-enough? x y)
    (< (abs (- x y)) tolerance))
  (define (calc curr)
    (let ((new_curr (f curr)))
      (if (close-enough? new_curr curr)
          curr
          (calc new_curr))))
  (calc approx))
  
(define (derivative g)
  (lambda (x) (/ (- (g (+ x dx)) (g x)) dx)))

(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) ((derivative g) x)))))

(define (newton g approx)
  (fixpoint (newton-transform g) approx))


