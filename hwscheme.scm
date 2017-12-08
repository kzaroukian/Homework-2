;;; Kaylin Zaroukian

(define taxRate 0.065)
(define mon "$")
(define subtotal "Subtotal: $")
(define tax "Tax: $")
(define cost "Total cost: $")

(define (calc inp total)
  (cond
        ((eq? inp -1) (print inp total)) ;;; true
           (else (let ((inp (read))) (total(+ total inp))((display)(calc(inp total))) (newline))))) ;;; false
        
(define (print a b)
      (display subtotal)
      (display a)(newline)
      (display tax)
      (display (-(* b taxRate) a))(newline)
      (display cost)
      (display (* b taxRate)) (newline)
  )

(define start "Scheme Point-of-Sale")
(display start)(newline)
(define trans "Start transaction (exit with 0): ") 
(display trans)(newline)
(define line "Enter value: ")
(display line)(newline)
(calc 0 0)

