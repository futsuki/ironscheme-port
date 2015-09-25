(library (system
          component-model
          designer-serialization-visibility-attribute)
  (export new
          is?
          designer-serialization-visibility-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          default
          content
          hidden
          visible
          visibility)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.DesignerSerializationVisibilityAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.ComponentModel.DesignerSerializationVisibilityAttribute
      a))
  (define (designer-serialization-visibility-attribute? a)
    (clr-is
      System.ComponentModel.DesignerSerializationVisibilityAttribute
      a))
  (define-method-port
    get-hash-code
    System.ComponentModel.DesignerSerializationVisibilityAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.DesignerSerializationVisibilityAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.DesignerSerializationVisibilityAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.DesignerSerializationVisibilityAttribute
    Default
    System.ComponentModel.DesignerSerializationVisibilityAttribute)
  (define-field-port
    content
    #f
    #f
    (static:)
    System.ComponentModel.DesignerSerializationVisibilityAttribute
    Content
    System.ComponentModel.DesignerSerializationVisibilityAttribute)
  (define-field-port
    hidden
    #f
    #f
    (static:)
    System.ComponentModel.DesignerSerializationVisibilityAttribute
    Hidden
    System.ComponentModel.DesignerSerializationVisibilityAttribute)
  (define-field-port
    visible
    #f
    #f
    (static:)
    System.ComponentModel.DesignerSerializationVisibilityAttribute
    Visible
    System.ComponentModel.DesignerSerializationVisibilityAttribute)
  (define-field-port
    visibility
    #f
    #f
    (property:)
    System.ComponentModel.DesignerSerializationVisibilityAttribute
    Visibility
    System.ComponentModel.DesignerSerializationVisibility))
