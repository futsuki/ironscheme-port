(library (system runtime remoting client-identity)
  (export new
          is?
          client-identity?
          create-obj-ref
          client-proxy-get
          client-proxy-set!
          client-proxy-update!
          target-uri)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Runtime.Remoting.ClientIdentity a ...)))))
  (define (is? a) (clr-is System.Runtime.Remoting.ClientIdentity a))
  (define (client-identity? a)
    (clr-is System.Runtime.Remoting.ClientIdentity a))
  (define-method-port
    create-obj-ref
    System.Runtime.Remoting.ClientIdentity
    CreateObjRef
    (System.Runtime.Remoting.ObjRef System.Type))
  (define-field-port
    client-proxy-get
    client-proxy-set!
    client-proxy-update!
    (property:)
    System.Runtime.Remoting.ClientIdentity
    ClientProxy
    System.MarshalByRefObject)
  (define-field-port
    target-uri
    #f
    #f
    (property:)
    System.Runtime.Remoting.ClientIdentity
    TargetUri
    System.String))
