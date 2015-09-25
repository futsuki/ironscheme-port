(library (system runtime remoting messaging method-return-dictionary)
  (export new
          is?
          method-return-dictionary?
          internal-return-keys-get
          internal-return-keys-set!
          internal-return-keys-update!
          internal-exception-keys-get
          internal-exception-keys-set!
          internal-exception-keys-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.MethodReturnDictionary
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Messaging.MethodReturnDictionary a))
  (define (method-return-dictionary? a)
    (clr-is System.Runtime.Remoting.Messaging.MethodReturnDictionary a))
  (define-field-port
    internal-return-keys-get
    internal-return-keys-set!
    internal-return-keys-update!
    (static:)
    System.Runtime.Remoting.Messaging.MethodReturnDictionary
    InternalReturnKeys
    System.String[])
  (define-field-port
    internal-exception-keys-get
    internal-exception-keys-set!
    internal-exception-keys-update!
    (static:)
    System.Runtime.Remoting.Messaging.MethodReturnDictionary
    InternalExceptionKeys
    System.String[]))
