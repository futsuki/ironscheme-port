(library (system component-model designer-attribute)
  (export new
          is?
          designer-attribute?
          get-hash-code
          equals?
          designer-base-type-name
          designer-type-name
          type-id)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.DesignerAttribute a ...)))))
  (define (is? a) (clr-is System.ComponentModel.DesignerAttribute a))
  (define (designer-attribute? a)
    (clr-is System.ComponentModel.DesignerAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.DesignerAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.ComponentModel.DesignerAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    designer-base-type-name
    #f
    #f
    (property:)
    System.ComponentModel.DesignerAttribute
    DesignerBaseTypeName
    System.String)
  (define-field-port
    designer-type-name
    #f
    #f
    (property:)
    System.ComponentModel.DesignerAttribute
    DesignerTypeName
    System.String)
  (define-field-port
    type-id
    #f
    #f
    (property:)
    System.ComponentModel.DesignerAttribute
    TypeId
    System.Object))
