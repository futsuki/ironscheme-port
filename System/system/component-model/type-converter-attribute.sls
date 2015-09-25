(library (system component-model type-converter-attribute)
  (export new
          is?
          type-converter-attribute?
          get-hash-code
          equals?
          default
          converter-type-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.TypeConverterAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.TypeConverterAttribute a))
  (define (type-converter-attribute? a)
    (clr-is System.ComponentModel.TypeConverterAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.TypeConverterAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.ComponentModel.TypeConverterAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.TypeConverterAttribute
    Default
    System.ComponentModel.TypeConverterAttribute)
  (define-field-port
    converter-type-name
    #f
    #f
    (property:)
    System.ComponentModel.TypeConverterAttribute
    ConverterTypeName
    System.String))
