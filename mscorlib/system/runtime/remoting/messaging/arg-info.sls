(library (system runtime remoting messaging arg-info)
  (export new
          is?
          arg-info?
          get-in-out-args
          get-in-out-arg-name
          get-in-out-arg-count
          get-in-out-arg-index)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Runtime.Remoting.Messaging.ArgInfo a ...)))))
  (define (is? a) (clr-is System.Runtime.Remoting.Messaging.ArgInfo a))
  (define (arg-info? a)
    (clr-is System.Runtime.Remoting.Messaging.ArgInfo a))
  (define-method-port
    get-in-out-args
    System.Runtime.Remoting.Messaging.ArgInfo
    GetInOutArgs
    (System.Object[] System.Object[]))
  (define-method-port
    get-in-out-arg-name
    System.Runtime.Remoting.Messaging.ArgInfo
    GetInOutArgName
    (System.String System.Int32))
  (define-method-port
    get-in-out-arg-count
    System.Runtime.Remoting.Messaging.ArgInfo
    GetInOutArgCount
    (System.Int32))
  (define-method-port
    get-in-out-arg-index
    System.Runtime.Remoting.Messaging.ArgInfo
    GetInOutArgIndex
    (System.Int32 System.Int32)))
