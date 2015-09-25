(library (system runtime remoting object-handle)
  (export new is? object-handle? unwrap initialize-lifetime-service)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Runtime.Remoting.ObjectHandle a ...)))))
  (define (is? a) (clr-is System.Runtime.Remoting.ObjectHandle a))
  (define (object-handle? a)
    (clr-is System.Runtime.Remoting.ObjectHandle a))
  (define-method-port
    unwrap
    System.Runtime.Remoting.ObjectHandle
    Unwrap
    (System.Object))
  (define-method-port
    initialize-lifetime-service
    System.Runtime.Remoting.ObjectHandle
    InitializeLifetimeService
    (System.Object)))
