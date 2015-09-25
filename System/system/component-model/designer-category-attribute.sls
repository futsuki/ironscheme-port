(library (system component-model designer-category-attribute)
  (export new
          is?
          designer-category-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          component
          form
          generic
          default
          type-id
          category)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.DesignerCategoryAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.DesignerCategoryAttribute a))
  (define (designer-category-attribute? a)
    (clr-is System.ComponentModel.DesignerCategoryAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.DesignerCategoryAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.DesignerCategoryAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.DesignerCategoryAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    component
    #f
    #f
    (static:)
    System.ComponentModel.DesignerCategoryAttribute
    Component
    System.ComponentModel.DesignerCategoryAttribute)
  (define-field-port
    form
    #f
    #f
    (static:)
    System.ComponentModel.DesignerCategoryAttribute
    Form
    System.ComponentModel.DesignerCategoryAttribute)
  (define-field-port
    generic
    #f
    #f
    (static:)
    System.ComponentModel.DesignerCategoryAttribute
    Generic
    System.ComponentModel.DesignerCategoryAttribute)
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.DesignerCategoryAttribute
    Default
    System.ComponentModel.DesignerCategoryAttribute)
  (define-field-port
    type-id
    #f
    #f
    (property:)
    System.ComponentModel.DesignerCategoryAttribute
    TypeId
    System.Object)
  (define-field-port
    category
    #f
    #f
    (property:)
    System.ComponentModel.DesignerCategoryAttribute
    Category
    System.String))
