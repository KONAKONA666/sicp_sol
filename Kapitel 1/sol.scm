Übung 1.2

(/ (+ 5 (+ 4 (- 2 (- 3 (+ 6 (/ 4 5)))))) (* 3 (- 6 2) (- 2 7)))

Übung 1.3

(define (quadrat x) (* x x))
(define (quadratsumme x y) (+ (quadrat x) (quadrat y)))

(define (max x y) 
  (if (> x y) x y)
)


(define (quadrat_summe_zwei_zahlen x y z)
  ( cond 
    ((and (>= x z) (>= y z)) (quadratsumme x y))
    ((and (>= x y) (>= z y)) (quadratsumme x z))
    ((and (>= y x) (>= z x)) (quadratsumme y z))
  ) 
)

Übung 1.4

 (define (a-plus-abs-b a b) 
   ((if (> b 0) + -) a b))

bedeutet, dass wenn b eine negative Zahl ist, ist der Operand -, sonst ist er +

Übung 1.5

in applikativer Reihenfolge wertet ein Interprieter den Wert der Prozedur p sofort aus. Deshalb kommt er nie zum Abschluss, weil p p braucht.
in norrnaler Reihenfolge wertet zuerst den Wert der x Variable, und dann kommt zum Abschluss an der ersten Bedingung

Übung 1.9

(+ 4 5)

(inc (+ (dec 4) 5))

(inc (inc (+ (dec 3) 5)))

(inc (inc ( (inc (+ (dec 2) 5)))))

(inc (inc ( (inc ((inc (+ (dec 1) 5)))))))        

(inc (inc ( (inc ((inc (+ 0 5)))))))

(inc (inc ( (inc (inc 5)))))

(inc (inc ( (inc 6))))

(inc (inc 7 ))

(inc 8 )

9

(+ 4 5)

(+ 3 6)

(+ 2 7)

(+ 1 8)

(+ 0 9) -> 9

Der erste Prozeß ist rekursiv
Der Zweite ist iterativ 

Übung 1.10

(define (A x y) 
	(cond   ((= y 0) 0)
		((= x 0) (* 2 y))
		((= y 1) 2)
		(else (A (- x 1) 
			(A x (- y 1)))))

(A 1 10)

(A 0 (A 1 9))

(A 0 (A 0 (A 1 8)))

(A 0 (A 0 (A 0 (A 1 7))))

(A 0 (A 0 (A 0 (A 0 (A 1 6)))))

(A 0 (A 0 (A 0 (A 0 (A 0 (A 1 5))))))

(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 4)))))))

(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 3))))))))

(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 2)))))))))

(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1))))))))))

(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2)))))))))

(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 4 ))))))))

(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 8)))))))

(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 16))))))

(A 0 (A 0 (A 0 (A 0 (A 0 32)))))

(A 0 (A 0 (A 0 (A 0 64))))

(A 0 (A 0 (A 0 128)))

(A 0 (A 0 256))

(A 0 512)

1024

(f n) -> 2 * n
(g n) -> 2^n
(h n) -> 2^(2^.....n-1))

Übung 1.11

(define (f n) 
	(if (< n 3) n
		(+ (f (- n 1)) (* 2 (f (- n 2)))
			 (* 3 (f (- n 3))))))


(define (f n) 
	(calc_f 2 1 0 n))

(define (calc_f a b c count) 
	(if (= count 2)
		 a
		(calc_f (+ a (* 2 b) (* 3 c)) a b (- count 1))))

Übung 1.12

(define (pascal x y)
  (if (or (= y 1) (= x y))
    1
    (+ (pascal (- x 1) y) (pascal (- x 1) (- y 1)))))


Übung 1.13

Leider kann ich LaTEX nicht benutzen. Ich bin zu faul, das zu erlernen

Übung 1.14	
 
Es ist einfach, zu beweisen, dass wenn es nur eine Munze gegeben ist, braucht die Function 2n+2 Operationen, um den Betrag auszuwerten.
Bezeichen wir es als T(n, 1)

Betrachten wir das Fall mit 2 Munzen. auf disem Fall ist die Länge des rechten Teilbaums n/5, in dem jeder Knoten seinen Teilbaum hat, der änlich wie das mit einer Munze Fall überlegt werden kann. Deshalb ist die Anzal der Operationen n/5 * T(n, 1) -> n/5*(2n+2) = O(n^2)

Die Idee besteht darin, dass der Betrag rekursiv ausgewertet werden kann, f(n, a[k])*T(n, k-1). Man bemerke, dass die f(n, a[k]) gleich n/a[k] ist und so sieht das Muster aus, dass O(T(n, k)) O(n^k) ist. 

Übung 1.15

12.15/3^k <= 0.1
121.5 <= 3^k
k = 5

Übung 1.17

(define (halfte x) 
  (/ x 2))

(define (doppelt x) 
  (+ x x))

(define (m a b)
  (cond ((= a 2) (doppelt b))
        ((even? a) (doppelt (m (halfte a) b)))
        (else (+ b (m (- a 1) b)))))


Übung 1.19
(define (fib n)
  (fib_iter 1 0 0 1 n))

(define (quadrat x) (* x x))

(define (fib_iter a b p q n)
  (cond ((= n 0) b)
        ((even? n)
          (fib_iter a b 
          (+ (quadrat p) (quadrat q))
          (+ (quadrat q) (* 2 (* p q))) (/ n 2)))
        (else (fib_iter (+ (* b q) (* a q) (* a p)) 
                        (+ (* b p) (* a q)) p q (- n 1)))))

Übung 1.29


(define (integral-simpson f a b n)
  (define h (/ (- b a) n))
  (define (simpson-next x)
    (+ x (* 2 h)))

  (* (/ h 3) (+ (* 4 (summe f (+ a h) simpson-next b))
                (* 2 (summe f (+ a (* 2 h)) simpson-next b)) 
                (f a) (f b))))


Übung 1.30

(define (summe term a next b)
  (define (iter a res)
    (if (>= a b)
        res
        (iter (next a) (+ res (term a)))))
  (iter a 0))


Übung 1.31

a) (define (product term a next b)
  (if (> a b)
    1
    (* (term a) (product term (next a) next b))))

(define (inc n) (+ 1 n))
(define (self x) x)

(define (fact n)
  (product self 1 inc n))


(define (fact n)
  (product self 1 inc n))
 (define (pi-next x)
     (+ x 2))
(define pi
  (* 200 (/ (product square 2 pi-next 99)
          (product square 1 pi-next 99))))

Übung 1.32

(define (akkumulator kombinierer null-groesse term a naechstes b)
  (if (> a b)
      null-groesse
      (kombinierer a 
                  (akkumulator kombinierer null-groesse term (naechstes a) naechstes b))))

Übung 1.36

(fixpoint (lambda (x) (/ (log 1000) (log x))) 2)

Übung 1.37

(define (cont-frac n d k)
  (if (= k 0)
      d
      (+ d (/ n (cont-frac n d (- k 1))))))




1.39

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

1.40
(define (cubic-equation a b c)
  (lambda (x) (+ (* x x x) (* a x x) (* b x) c)))

1.41


(define (doppelt f)
  (lambda (x) (f (f x))))

1.42


(define (composition f g)
  (lambda (x) (f (g x))))

