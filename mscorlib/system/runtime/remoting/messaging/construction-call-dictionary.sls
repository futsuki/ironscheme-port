(library (system
          runtime
          remoting
          messaging
          construction-call-dictionary)
  (export new
          is?
          construction-call-dictionary?
          internal-keys-get
          internal-keys-set!
          internal-keys-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.ConstructionCallDictionary
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Remoting.Messaging.ConstructionCallDictionary
      a))
  (define (construction-call-dictionary? a)
    (clr-is
      System.Runtime.Remoting.Messaging.ConstructionCallDictionary
      a))
  (define-field-port
    internal-keys-get
    internal-keys-set!
    internal-keys-update!
    (static:)
    System.Runtime.Remoting.Messaging.ConstructionCallDictionary
    InternalKeys
    System.String[]))
