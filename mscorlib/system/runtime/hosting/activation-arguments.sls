(library (system runtime hosting activation-arguments)
  (export new
          is?
          activation-arguments?
          activation-context
          activation-data
          application-identity)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Hosting.ActivationArguments
             a
             ...)))))
  (define (is? a) (clr-is System.Runtime.Hosting.ActivationArguments a))
  (define (activation-arguments? a)
    (clr-is System.Runtime.Hosting.ActivationArguments a))
  (define-field-port
    activation-context
    #f
    #f
    (property:)
    System.Runtime.Hosting.ActivationArguments
    ActivationContext
    System.ActivationContext)
  (define-field-port
    activation-data
    #f
    #f
    (property:)
    System.Runtime.Hosting.ActivationArguments
    ActivationData
    System.String[])
  (define-field-port
    application-identity
    #f
    #f
    (property:)
    System.Runtime.Hosting.ActivationArguments
    ApplicationIdentity
    System.ApplicationIdentity))
