(library (system type-initialization-exception)
  (export new
          is?
          type-initialization-exception?
          get-object-data
          type-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.TypeInitializationException a ...)))))
  (define (is? a) (clr-is System.TypeInitializationException a))
  (define (type-initialization-exception? a)
    (clr-is System.TypeInitializationException a))
  (define-method-port
    get-object-data
    System.TypeInitializationException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    type-name
    #f
    #f
    (property:)
    System.TypeInitializationException
    TypeName
    System.String))
