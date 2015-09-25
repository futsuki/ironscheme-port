(library (system component-model component-info)
  (export new
          is?
          component-info?
          get-properties
          get-attributes
          get-events)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.ComponentInfo a ...)))))
  (define (is? a) (clr-is System.ComponentModel.ComponentInfo a))
  (define (component-info? a)
    (clr-is System.ComponentModel.ComponentInfo a))
  (define-method-port
    get-properties
    System.ComponentModel.ComponentInfo
    GetProperties
    (System.ComponentModel.PropertyDescriptorCollection))
  (define-method-port
    get-attributes
    System.ComponentModel.ComponentInfo
    GetAttributes
    (System.ComponentModel.AttributeCollection))
  (define-method-port
    get-events
    System.ComponentModel.ComponentInfo
    GetEvents
    (System.ComponentModel.EventDescriptorCollection)))
