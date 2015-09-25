(library (system data common exception-helper)
  (export new is? exception-helper?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.Common.ExceptionHelper a ...)))))
  (define (is? a) (clr-is System.Data.Common.ExceptionHelper a))
  (define (exception-helper? a)
    (clr-is System.Data.Common.ExceptionHelper a)))
