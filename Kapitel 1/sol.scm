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

Übung 1.6





