(library (system reflection reflection-type-load-exception)
  (export new
          is?
          reflection-type-load-exception?
          get-object-data
          types
          loader-exceptions)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.ReflectionTypeLoadException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Reflection.ReflectionTypeLoadException a))
  (define (reflection-type-load-exception? a)
    (clr-is System.Reflection.ReflectionTypeLoadException a))
  (define-method-port
    get-object-data
    System.Reflection.ReflectionTypeLoadException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    types
    #f
    #f
    (property:)
    System.Reflection.ReflectionTypeLoadException
    Types
    System.Type[])
  (define-field-port
    loader-exceptions
    #f
    #f
    (property:)
    System.Reflection.ReflectionTypeLoadException
    LoaderExceptions
    System.Exception[]))
