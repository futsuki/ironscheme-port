(library (system io internal-buffer-overflow-exception)
  (export new is? internal-buffer-overflow-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.IO.InternalBufferOverflowException a ...)))))
  (define (is? a) (clr-is System.IO.InternalBufferOverflowException a))
  (define (internal-buffer-overflow-exception? a)
    (clr-is System.IO.InternalBufferOverflowException a)))