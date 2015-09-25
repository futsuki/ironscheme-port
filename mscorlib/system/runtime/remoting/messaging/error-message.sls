(library (system runtime remoting messaging error-message)
  (export new
          is?
          error-message?
          get-in-arg-name
          get-in-arg
          get-arg
          get-arg-name
          arg-count
          args
          has-var-args?
          method-base
          method-name
          method-signature
          properties
          type-name
          uri-get
          uri-set!
          uri-update!
          in-arg-count
          in-args
          logical-call-context)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.ErrorMessage
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Messaging.ErrorMessage a))
  (define (error-message? a)
    (clr-is System.Runtime.Remoting.Messaging.ErrorMessage a))
  (define-method-port
    get-in-arg-name
    System.Runtime.Remoting.Messaging.ErrorMessage
    GetInArgName
    (System.String System.Int32))
  (define-method-port
    get-in-arg
    System.Runtime.Remoting.Messaging.ErrorMessage
    GetInArg
    (System.Object System.Int32))
  (define-method-port
    get-arg
    System.Runtime.Remoting.Messaging.ErrorMessage
    GetArg
    (System.Object System.Int32))
  (define-method-port
    get-arg-name
    System.Runtime.Remoting.Messaging.ErrorMessage
    GetArgName
    (System.String System.Int32))
  (define-field-port
    arg-count
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.ErrorMessage
    ArgCount
    System.Int32)
  (define-field-port
    args
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.ErrorMessage
    Args
    System.Object[])
  (define-field-port
    has-var-args?
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.ErrorMessage
    HasVarArgs
    System.Boolean)
  (define-field-port
    method-base
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.ErrorMessage
    MethodBase
    System.Reflection.MethodBase)
  (define-field-port
    method-name
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.ErrorMessage
    MethodName
    System.String)
  (define-field-port
    method-signature
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.ErrorMessage
    MethodSignature
    System.Object)
  (define-field-port
    properties
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.ErrorMessage
    Properties
    System.Collections.IDictionary)
  (define-field-port
    type-name
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.ErrorMessage
    TypeName
    System.String)
  (define-field-port
    uri-get
    uri-set!
    uri-update!
    (property:)
    System.Runtime.Remoting.Messaging.ErrorMessage
    Uri
    System.String)
  (define-field-port
    in-arg-count
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.ErrorMessage
    InArgCount
    System.Int32)
  (define-field-port
    in-args
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.ErrorMessage
    InArgs
    System.Object[])
  (define-field-port
    logical-call-context
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.ErrorMessage
    LogicalCallContext
    System.Runtime.Remoting.Messaging.LogicalCallContext))
