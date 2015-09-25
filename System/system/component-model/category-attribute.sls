(library (system component-model category-attribute)
  (export new
          is?
          category-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          action
          appearance
          asynchronous
          behavior
          data
          default
          design
          drag-drop
          focus
          format
          key
          layout
          mouse
          window-style
          category)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.CategoryAttribute a ...)))))
  (define (is? a) (clr-is System.ComponentModel.CategoryAttribute a))
  (define (category-attribute? a)
    (clr-is System.ComponentModel.CategoryAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.CategoryAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.CategoryAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.CategoryAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    action
    #f
    #f
    (static: property:)
    System.ComponentModel.CategoryAttribute
    Action
    System.ComponentModel.CategoryAttribute)
  (define-field-port
    appearance
    #f
    #f
    (static: property:)
    System.ComponentModel.CategoryAttribute
    Appearance
    System.ComponentModel.CategoryAttribute)
  (define-field-port
    asynchronous
    #f
    #f
    (static: property:)
    System.ComponentModel.CategoryAttribute
    Asynchronous
    System.ComponentModel.CategoryAttribute)
  (define-field-port
    behavior
    #f
    #f
    (static: property:)
    System.ComponentModel.CategoryAttribute
    Behavior
    System.ComponentModel.CategoryAttribute)
  (define-field-port
    data
    #f
    #f
    (static: property:)
    System.ComponentModel.CategoryAttribute
    Data
    System.ComponentModel.CategoryAttribute)
  (define-field-port
    default
    #f
    #f
    (static: property:)
    System.ComponentModel.CategoryAttribute
    Default
    System.ComponentModel.CategoryAttribute)
  (define-field-port
    design
    #f
    #f
    (static: property:)
    System.ComponentModel.CategoryAttribute
    Design
    System.ComponentModel.CategoryAttribute)
  (define-field-port
    drag-drop
    #f
    #f
    (static: property:)
    System.ComponentModel.CategoryAttribute
    DragDrop
    System.ComponentModel.CategoryAttribute)
  (define-field-port
    focus
    #f
    #f
    (static: property:)
    System.ComponentModel.CategoryAttribute
    Focus
    System.ComponentModel.CategoryAttribute)
  (define-field-port
    format
    #f
    #f
    (static: property:)
    System.ComponentModel.CategoryAttribute
    Format
    System.ComponentModel.CategoryAttribute)
  (define-field-port
    key
    #f
    #f
    (static: property:)
    System.ComponentModel.CategoryAttribute
    Key
    System.ComponentModel.CategoryAttribute)
  (define-field-port
    layout
    #f
    #f
    (static: property:)
    System.ComponentModel.CategoryAttribute
    Layout
    System.ComponentModel.CategoryAttribute)
  (define-field-port
    mouse
    #f
    #f
    (static: property:)
    System.ComponentModel.CategoryAttribute
    Mouse
    System.ComponentModel.CategoryAttribute)
  (define-field-port
    window-style
    #f
    #f
    (static: property:)
    System.ComponentModel.CategoryAttribute
    WindowStyle
    System.ComponentModel.CategoryAttribute)
  (define-field-port
    category
    #f
    #f
    (property:)
    System.ComponentModel.CategoryAttribute
    Category
    System.String))
