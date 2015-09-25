(library (system runtime remoting messaging method-call-dictionary)
  (export new
          is?
          method-call-dictionary?
          internal-keys-get
          internal-keys-set!
          internal-keys-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.MethodCallDictionary
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Messaging.MethodCallDictionary a))
  (define (method-call-dictionary? a)
    (clr-is System.Runtime.Remoting.Messaging.MethodCallDictionary a))
  (define-field-port
    internal-keys-get
    internal-keys-set!
    internal-keys-update!
    (static:)
    System.Runtime.Remoting.Messaging.MethodCallDictionary
    InternalKeys
    System.String[]))
