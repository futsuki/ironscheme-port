(library (system runtime serialization formatters server-fault)
  (export new
          is?
          server-fault?
          exception-type-get
          exception-type-set!
          exception-type-update!
          exception-message-get
          exception-message-set!
          exception-message-update!
          stack-trace-get
          stack-trace-set!
          stack-trace-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.Formatters.ServerFault
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Serialization.Formatters.ServerFault a))
  (define (server-fault? a)
    (clr-is System.Runtime.Serialization.Formatters.ServerFault a))
  (define-field-port
    exception-type-get
    exception-type-set!
    exception-type-update!
    (property:)
    System.Runtime.Serialization.Formatters.ServerFault
    ExceptionType
    System.String)
  (define-field-port
    exception-message-get
    exception-message-set!
    exception-message-update!
    (property:)
    System.Runtime.Serialization.Formatters.ServerFault
    ExceptionMessage
    System.String)
  (define-field-port
    stack-trace-get
    stack-trace-set!
    stack-trace-update!
    (property:)
    System.Runtime.Serialization.Formatters.ServerFault
    StackTrace
    System.String))
