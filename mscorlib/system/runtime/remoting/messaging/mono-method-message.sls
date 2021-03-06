(library (system runtime remoting messaging mono-method-message)
  (export new
          is?
          mono-method-message?
          get-in-arg-name
          needs-out-processing?
          get-in-arg
          get-arg
          get-arg-name
          get-out-arg-name
          get-out-arg
          ctx-get
          ctx-set!
          ctx-update!
          rval-get
          rval-set!
          rval-update!
          exc-get
          exc-set!
          exc-update!
          properties
          arg-count
          args
          has-var-args?
          logical-call-context-get
          logical-call-context-set!
          logical-call-context-update!
          method-base
          method-name
          method-signature
          type-name
          uri-get
          uri-set!
          uri-update!
          in-arg-count
          in-args
          exception
          out-arg-count
          out-args
          return-value
          is-async?
          async-result)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.MonoMethodMessage
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Messaging.MonoMethodMessage a))
  (define (mono-method-message? a)
    (clr-is System.Runtime.Remoting.Messaging.MonoMethodMessage a))
  (define-method-port
    get-in-arg-name
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    GetInArgName
    (System.String System.Int32))
  (define-method-port
    needs-out-processing?
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    NeedsOutProcessing
    (System.Boolean System.Int32&))
  (define-method-port
    get-in-arg
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    GetInArg
    (System.Object System.Int32))
  (define-method-port
    get-arg
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    GetArg
    (System.Object System.Int32))
  (define-method-port
    get-arg-name
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    GetArgName
    (System.String System.Int32))
  (define-method-port
    get-out-arg-name
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    GetOutArgName
    (System.String System.Int32))
  (define-method-port
    get-out-arg
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    GetOutArg
    (System.Object System.Int32))
  (define-field-port
    ctx-get
    ctx-set!
    ctx-update!
    ()
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    ctx
    System.Runtime.Remoting.Messaging.LogicalCallContext)
  (define-field-port
    rval-get
    rval-set!
    rval-update!
    ()
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    rval
    System.Object)
  (define-field-port
    exc-get
    exc-set!
    exc-update!
    ()
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    exc
    System.Exception)
  (define-field-port
    properties
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    Properties
    System.Collections.IDictionary)
  (define-field-port
    arg-count
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    ArgCount
    System.Int32)
  (define-field-port
    args
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    Args
    System.Object[])
  (define-field-port
    has-var-args?
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    HasVarArgs
    System.Boolean)
  (define-field-port
    logical-call-context-get
    logical-call-context-set!
    logical-call-context-update!
    (property:)
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    LogicalCallContext
    System.Runtime.Remoting.Messaging.LogicalCallContext)
  (define-field-port
    method-base
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    MethodBase
    System.Reflection.MethodBase)
  (define-field-port
    method-name
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    MethodName
    System.String)
  (define-field-port
    method-signature
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    MethodSignature
    System.Object)
  (define-field-port
    type-name
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    TypeName
    System.String)
  (define-field-port
    uri-get
    uri-set!
    uri-update!
    (property:)
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    Uri
    System.String)
  (define-field-port
    in-arg-count
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    InArgCount
    System.Int32)
  (define-field-port
    in-args
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    InArgs
    System.Object[])
  (define-field-port
    exception
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    Exception
    System.Exception)
  (define-field-port
    out-arg-count
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    OutArgCount
    System.Int32)
  (define-field-port
    out-args
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    OutArgs
    System.Object[])
  (define-field-port
    return-value
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    ReturnValue
    System.Object)
  (define-field-port
    is-async?
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    IsAsync
    System.Boolean)
  (define-field-port
    async-result
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MonoMethodMessage
    AsyncResult
    System.Runtime.Remoting.Messaging.AsyncResult))
