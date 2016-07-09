#lang racket
(require graphics/graphics)

(open-graphics)

(define w (open-viewport "Julia Set" 300 300))
; viewport window appears

(define (mult-list a n z acc)
  [let ([y (* a z)])
  (cond
    ([= 1 n] (cons 1 (reverse acc)))
    ((mult-list a (- n 1) y (cons y acc))))])


; if required, can also use the x on the top right to close the window
;(close-viewport w)

;(close-graphics)