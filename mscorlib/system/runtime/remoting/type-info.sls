(library (system runtime remoting type-info)
  (export new
          is?
          type-info?
          can-cast-to?
          type-name-get
          type-name-set!
          type-name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Runtime.Remoting.TypeInfo a ...)))))
  (define (is? a) (clr-is System.Runtime.Remoting.TypeInfo a))
  (define (type-info? a) (clr-is System.Runtime.Remoting.TypeInfo a))
  (define-method-port
    can-cast-to?
    System.Runtime.Remoting.TypeInfo
    CanCastTo
    (System.Boolean System.Type System.Object))
  (define-field-port
    type-name-get
    type-name-set!
    type-name-update!
    (property:)
    System.Runtime.Remoting.TypeInfo
    TypeName
    System.String))
