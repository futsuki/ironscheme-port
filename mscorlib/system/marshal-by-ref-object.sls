(library (system marshal-by-ref-object)
  (export is?
          marshal-by-ref-object?
          create-obj-ref
          initialize-lifetime-service
          get-lifetime-service)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.MarshalByRefObject a))
  (define (marshal-by-ref-object? a)
    (clr-is System.MarshalByRefObject a))
  (define-method-port
    create-obj-ref
    System.MarshalByRefObject
    CreateObjRef
    (System.Runtime.Remoting.ObjRef System.Type))
  (define-method-port
    initialize-lifetime-service
    System.MarshalByRefObject
    InitializeLifetimeService
    (System.Object))
  (define-method-port
    get-lifetime-service
    System.MarshalByRefObject
    GetLifetimeService
    (System.Object)))
