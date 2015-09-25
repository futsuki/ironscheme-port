(library (system component-model type-info)
  (export new is? type-info? get-properties get-attributes get-events)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.ComponentModel.TypeInfo a ...)))))
  (define (is? a) (clr-is System.ComponentModel.TypeInfo a))
  (define (type-info? a) (clr-is System.ComponentModel.TypeInfo a))
  (define-method-port
    get-properties
    System.ComponentModel.TypeInfo
    GetProperties
    (System.ComponentModel.PropertyDescriptorCollection))
  (define-method-port
    get-attributes
    System.ComponentModel.TypeInfo
    GetAttributes
    (System.ComponentModel.AttributeCollection))
  (define-method-port
    get-events
    System.ComponentModel.TypeInfo
    GetEvents
    (System.ComponentModel.EventDescriptorCollection)))
