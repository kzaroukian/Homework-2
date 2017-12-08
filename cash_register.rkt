#lang scheme
(define taxRate 0.065)
(define taxAdded 1.065)
(define mon "$")
(define subtotal "Subtotal: $")
(define tax "Tax: $")
(define cost "Total cost: $")

(define (calc inp total)
 (cond
    ((eq? inp 0) 
     (display subtotal)
      (display total)(newline)
      (display tax)
      (display (* total taxRate))(newline)
      (display cost)
      (display (* total taxAdded)) (newline)
                 )
    (else (let ((inp (read))) (display (+ inp total))(newline) (calc inp (+ inp total))))))

(define start "Scheme Point-of-Sale")
(display start)(newline)
(define trans "Start transaction (exit with 0): ") 
(display trans)(newline)
(define line "Enter value: ")
(display line)(newline)

(calc 1 0)  
