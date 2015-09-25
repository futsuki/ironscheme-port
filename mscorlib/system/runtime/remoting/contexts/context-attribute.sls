(library (system runtime remoting contexts context-attribute)
  (export new
          is?
          context-attribute?
          freeze
          get-hash-code
          is-context-ok?
          is-new-context-ok?
          get-properties-for-new-context
          equals?
          name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Contexts.ContextAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Contexts.ContextAttribute a))
  (define (context-attribute? a)
    (clr-is System.Runtime.Remoting.Contexts.ContextAttribute a))
  (define-method-port
    freeze
    System.Runtime.Remoting.Contexts.ContextAttribute
    Freeze
    (System.Void System.Runtime.Remoting.Contexts.Context))
  (define-method-port
    get-hash-code
    System.Runtime.Remoting.Contexts.ContextAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-context-ok?
    System.Runtime.Remoting.Contexts.ContextAttribute
    IsContextOK
    (System.Boolean
      System.Runtime.Remoting.Contexts.Context
      System.Runtime.Remoting.Activation.IConstructionCallMessage))
  (define-method-port
    is-new-context-ok?
    System.Runtime.Remoting.Contexts.ContextAttribute
    IsNewContextOK
    (System.Boolean System.Runtime.Remoting.Contexts.Context))
  (define-method-port
    get-properties-for-new-context
    System.Runtime.Remoting.Contexts.ContextAttribute
    GetPropertiesForNewContext
    (System.Void
      System.Runtime.Remoting.Activation.IConstructionCallMessage))
  (define-method-port
    equals?
    System.Runtime.Remoting.Contexts.ContextAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Runtime.Remoting.Contexts.ContextAttribute
    Name
    System.String))
