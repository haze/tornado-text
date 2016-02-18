(use-modules (ice-9 readline))

(define (shift str)
  (let ([chars (string->list str)])
    (list->string
     (append
      (cdr chars)
      (list (car chars))))))

(define (loop num text)
  (if (not (zero? num))
      (begin (display (string-append text "\n"))
             (loop (- num 1) (shift text)))
      '()))

(let
    ([text (begin (display "Enter some text: ")
                  (readline))]
     [num (begin (display "Enter line amount: ")
                 (if (equal? (peek-char) #\newline)
                     -1
                     (+ (read) 1)))])
     (loop num text))
