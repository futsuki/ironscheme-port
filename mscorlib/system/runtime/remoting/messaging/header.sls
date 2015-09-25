(library (system runtime remoting messaging header)
  (export new
          is?
          header?
          header-namespace-get
          header-namespace-set!
          header-namespace-update!
          must-understand?-get
          must-understand?-set!
          must-understand?-update!
          name-get
          name-set!
          name-update!
          value-get
          value-set!
          value-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Runtime.Remoting.Messaging.Header a ...)))))
  (define (is? a) (clr-is System.Runtime.Remoting.Messaging.Header a))
  (define (header? a)
    (clr-is System.Runtime.Remoting.Messaging.Header a))
  (define-field-port
    header-namespace-get
    header-namespace-set!
    header-namespace-update!
    ()
    System.Runtime.Remoting.Messaging.Header
    HeaderNamespace
    System.String)
  (define-field-port
    must-understand?-get
    must-understand?-set!
    must-understand?-update!
    ()
    System.Runtime.Remoting.Messaging.Header
    MustUnderstand
    System.Boolean)
  (define-field-port
    name-get
    name-set!
    name-update!
    ()
    System.Runtime.Remoting.Messaging.Header
    Name
    System.String)
  (define-field-port
    value-get
    value-set!
    value-update!
    ()
    System.Runtime.Remoting.Messaging.Header
    Value
    System.Object))
