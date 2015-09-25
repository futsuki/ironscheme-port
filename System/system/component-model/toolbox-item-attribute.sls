(library (system component-model toolbox-item-attribute)
  (export new
          is?
          toolbox-item-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          default
          none
          toolbox-item-type
          toolbox-item-type-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.ToolboxItemAttribute
             a
             ...)))))
  (define (is? a) (clr-is System.ComponentModel.ToolboxItemAttribute a))
  (define (toolbox-item-attribute? a)
    (clr-is System.ComponentModel.ToolboxItemAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.ToolboxItemAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.ToolboxItemAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.ToolboxItemAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.ToolboxItemAttribute
    Default
    System.ComponentModel.ToolboxItemAttribute)
  (define-field-port
    none
    #f
    #f
    (static:)
    System.ComponentModel.ToolboxItemAttribute
    None
    System.ComponentModel.ToolboxItemAttribute)
  (define-field-port
    toolbox-item-type
    #f
    #f
    (property:)
    System.ComponentModel.ToolboxItemAttribute
    ToolboxItemType
    System.Type)
  (define-field-port
    toolbox-item-type-name
    #f
    #f
    (property:)
    System.ComponentModel.ToolboxItemAttribute
    ToolboxItemTypeName
    System.String))
