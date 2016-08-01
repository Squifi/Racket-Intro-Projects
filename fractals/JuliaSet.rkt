#lang racket
(require graphics/graphics)
(require 2htdp/image)

(open-graphics)

(define w (open-viewport "Julia Set" 300 300))
; viewport window appears

; quick example on how to draw a single Pixel on the screen
; the posn struct has an #extra-constructore, therefor (make-posn x y),
; is required here.
; make-rgb is a bit will look into it tomorrow
((draw-pixel w) (make-posn 3 5) "red")
((draw-pixel w) (make-posn 5 8) "red")
((draw-pixel w) (make-posn 6 8) "blue")
;;(square 1.0 "solid" "red")

(define (mult-list p n c acc)
  [let ([newp (+ [+ (sqr p) n] c)])
    ;[(draw-pixel w) (make-posn newp n) "blue"] - if i have integers
    (cond
      ([= 8 n] acc)
      ((mult-list newp (+ n 1) c (cons newp acc))))])

; changed make-posn beforehand gave p = 1+0.5i and c -0.7+2.701565i and
; just got complete bollocks from the drawing framework.
(mult-list 1.0+0.5i 0 -0.7+0.27015i '())

; if required, can also use the x on the top right to close the window
;(close-viewport w)
;(close-graphics)
