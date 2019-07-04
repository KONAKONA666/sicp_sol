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


