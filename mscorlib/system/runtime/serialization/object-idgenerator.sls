(library (system runtime serialization object-idgenerator)
  (export new is? object-idgenerator? get-id has-id)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.ObjectIDGenerator
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Serialization.ObjectIDGenerator a))
  (define (object-idgenerator? a)
    (clr-is System.Runtime.Serialization.ObjectIDGenerator a))
  (define-method-port
    get-id
    System.Runtime.Serialization.ObjectIDGenerator
    GetId
    (System.Int64 System.Object System.Boolean&))
  (define-method-port
    has-id
    System.Runtime.Serialization.ObjectIDGenerator
    HasId
    (System.Int64 System.Object System.Boolean&)))
