(library (system component-model toolbox-item-filter-attribute)
  (export new
          is?
          toolbox-item-filter-attribute?
          get-hash-code
          to-string
          match?
          equals?
          filter-string
          filter-type
          type-id)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.ToolboxItemFilterAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.ToolboxItemFilterAttribute a))
  (define (toolbox-item-filter-attribute? a)
    (clr-is System.ComponentModel.ToolboxItemFilterAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.ToolboxItemFilterAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.ComponentModel.ToolboxItemFilterAttribute
    ToString
    (System.String))
  (define-method-port
    match?
    System.ComponentModel.ToolboxItemFilterAttribute
    Match
    (System.Boolean System.Object))
  (define-method-port
    equals?
    System.ComponentModel.ToolboxItemFilterAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    filter-string
    #f
    #f
    (property:)
    System.ComponentModel.ToolboxItemFilterAttribute
    FilterString
    System.String)
  (define-field-port
    filter-type
    #f
    #f
    (property:)
    System.ComponentModel.ToolboxItemFilterAttribute
    FilterType
    System.ComponentModel.ToolboxItemFilterType)
  (define-field-port
    type-id
    #f
    #f
    (property:)
    System.ComponentModel.ToolboxItemFilterAttribute
    TypeId
    System.Object))
