(library (system component-model refresh-properties-attribute)
  (export new
          is?
          refresh-properties-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          all
          default
          repaint
          refresh-properties)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.RefreshPropertiesAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.RefreshPropertiesAttribute a))
  (define (refresh-properties-attribute? a)
    (clr-is System.ComponentModel.RefreshPropertiesAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.RefreshPropertiesAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.RefreshPropertiesAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.RefreshPropertiesAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    all
    #f
    #f
    (static:)
    System.ComponentModel.RefreshPropertiesAttribute
    All
    System.ComponentModel.RefreshPropertiesAttribute)
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.RefreshPropertiesAttribute
    Default
    System.ComponentModel.RefreshPropertiesAttribute)
  (define-field-port
    repaint
    #f
    #f
    (static:)
    System.ComponentModel.RefreshPropertiesAttribute
    Repaint
    System.ComponentModel.RefreshPropertiesAttribute)
  (define-field-port
    refresh-properties
    #f
    #f
    (property:)
    System.ComponentModel.RefreshPropertiesAttribute
    RefreshProperties
    System.ComponentModel.RefreshProperties))
