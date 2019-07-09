#lang sicp

(define (quadrat x ) (* x x))

(define (average x y) 
  (/ (+ y x) 2.0))

(define (search f neg-point pos-point)
  (let ((midpoint (average neg-point pos-point)))
    (if (close-enough? neg-point pos-point)
        midpoint
        (let ((test-value (f midpoint)))
            (cond ((positive? test-value) 
                    (search f neg-point midpoint))
                  ((negative? test-value) 
                    (search f midpoint pos-point))
                  (else midpoint))))))


(define (half-interval-method f a b)
  (let ((a-value (f a))
        (b-value (f b)))
    (cond ((and (negative? a-value) (positive? b-value))
           (search f a b))
          ((and (positive? a-value) (negative? b-value))
           (search f b a))
          (else (error "SCHEISSEEEE!!!!!!")))))

(define tolerance 0.0000001)

(define (fixpoint f approx)
  (define (close-enough? x y)
    (< (abs (- x y)) tolerance))
  (define (try v)
    (let ((next (f v)))
      (if (close-enough? v next)
          v
          (try next))))
  (try approx))

(define (sqrt x)
  (fixpoint (lambda (y) (average (/ x y) y)) 1))


 (define (cont-fact n d k) 
   (define (recur i) 
     (if (> i k) 
         0 
         (/ (n i) (+ (d i) (recur (+ 1 i)))))) 
   (recur 1)) 

 (define (tan-cf x k) 
   (cont-fact (lambda (i) 
                (if (= i 1) x (- (* x x)))) 
              (lambda (i) 
                (- (* i 2) 1)) 
              k)) 
