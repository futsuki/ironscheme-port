(library (system threading wait-handle-cannot-be-opened-exception)
  (export new is? wait-handle-cannot-be-opened-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Threading.WaitHandleCannotBeOpenedException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Threading.WaitHandleCannotBeOpenedException a))
  (define (wait-handle-cannot-be-opened-exception? a)
    (clr-is System.Threading.WaitHandleCannotBeOpenedException a)))
