#lang racket
(require graphics/graphics)

(open-graphics)

(define w (open-viewport "Julia Set" 300 300))
; viewport window appears



; quick example on how to draw a single Pixel on the screen
; the posn struct has an #extra-constructore, therefor (make-posn x y),
; is required here.
; make-rgb is a bit will look into it tomorrow
((draw-pixel w) (make-posn 3 5) "red")

(define (mult-list p n c acc)
  [let ([newp (+ [+ (sqr p) n] c)])
    [(draw-pixel w) (make-posn newp n) "blue"]
    (cond
      ([= 8 n] acc)
      ((mult-list newp (+ n 1) c (cons newp acc))))])




; if required, can also use the x on the top right to close the window
;(close-viewport w)

;(close-graphics)