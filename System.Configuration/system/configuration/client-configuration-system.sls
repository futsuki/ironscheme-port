(library (system configuration client-configuration-system)
  (export new is? client-configuration-system?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ClientConfigurationSystem
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.ClientConfigurationSystem a))
  (define (client-configuration-system? a)
    (clr-is System.Configuration.ClientConfigurationSystem a)))
