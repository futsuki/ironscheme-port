(library (system configuration config-helper)
  (export new is? config-helper?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.ConfigHelper a ...)))))
  (define (is? a) (clr-is System.Configuration.ConfigHelper a))
  (define (config-helper? a)
    (clr-is System.Configuration.ConfigHelper a)))
