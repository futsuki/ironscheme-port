(library (system data typed-data-set-generator-exception)
  (export new
          is?
          typed-data-set-generator-exception?
          get-object-data
          error-list)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.TypedDataSetGeneratorException
             a
             ...)))))
  (define (is? a) (clr-is System.Data.TypedDataSetGeneratorException a))
  (define (typed-data-set-generator-exception? a)
    (clr-is System.Data.TypedDataSetGeneratorException a))
  (define-method-port
    get-object-data
    System.Data.TypedDataSetGeneratorException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    error-list
    #f
    #f
    (property:)
    System.Data.TypedDataSetGeneratorException
    ErrorList
    System.Collections.ArrayList))
