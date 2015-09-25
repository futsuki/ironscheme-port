(library (system component-model property-tab-attribute)
  (export new
          is?
          property-tab-attribute?
          get-hash-code
          equals?
          tab-classes
          tab-scopes)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.PropertyTabAttribute
             a
             ...)))))
  (define (is? a) (clr-is System.ComponentModel.PropertyTabAttribute a))
  (define (property-tab-attribute? a)
    (clr-is System.ComponentModel.PropertyTabAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.PropertyTabAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.ComponentModel.PropertyTabAttribute
    Equals
    (System.Boolean System.ComponentModel.PropertyTabAttribute)
    (System.Boolean System.Object))
  (define-field-port
    tab-classes
    #f
    #f
    (property:)
    System.ComponentModel.PropertyTabAttribute
    TabClasses
    System.Type[])
  (define-field-port
    tab-scopes
    #f
    #f
    (property:)
    System.ComponentModel.PropertyTabAttribute
    TabScopes
    System.ComponentModel.PropertyTabScope[]))
