(library (system runtime remoting contexts context-callback-object)
  (export new is? context-callback-object? do-call-back)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Contexts.ContextCallbackObject
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Contexts.ContextCallbackObject a))
  (define (context-callback-object? a)
    (clr-is System.Runtime.Remoting.Contexts.ContextCallbackObject a))
  (define-method-port
    do-call-back
    System.Runtime.Remoting.Contexts.ContextCallbackObject
    DoCallBack
    (System.Void
      System.Runtime.Remoting.Contexts.CrossContextDelegate)))
