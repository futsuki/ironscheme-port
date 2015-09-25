(library (system threading thread-interrupted-exception)
  (export new is? thread-interrupted-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Threading.ThreadInterruptedException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Threading.ThreadInterruptedException a))
  (define (thread-interrupted-exception? a)
    (clr-is System.Threading.ThreadInterruptedException a)))
