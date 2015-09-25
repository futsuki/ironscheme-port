(library (system component-model data-object-attribute)
  (export new
          is?
          data-object-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          data-object
          default
          non-data-object
          is-data-object?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.DataObjectAttribute a ...)))))
  (define (is? a) (clr-is System.ComponentModel.DataObjectAttribute a))
  (define (data-object-attribute? a)
    (clr-is System.ComponentModel.DataObjectAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.DataObjectAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.DataObjectAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.DataObjectAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    data-object
    #f
    #f
    (static:)
    System.ComponentModel.DataObjectAttribute
    DataObject
    System.ComponentModel.DataObjectAttribute)
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.DataObjectAttribute
    Default
    System.ComponentModel.DataObjectAttribute)
  (define-field-port
    non-data-object
    #f
    #f
    (static:)
    System.ComponentModel.DataObjectAttribute
    NonDataObject
    System.ComponentModel.DataObjectAttribute)
  (define-field-port
    is-data-object?
    #f
    #f
    (property:)
    System.ComponentModel.DataObjectAttribute
    IsDataObject
    System.Boolean))
