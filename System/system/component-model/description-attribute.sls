(library (system component-model description-attribute)
  (export new
          is?
          description-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          default
          description)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.DescriptionAttribute
             a
             ...)))))
  (define (is? a) (clr-is System.ComponentModel.DescriptionAttribute a))
  (define (description-attribute? a)
    (clr-is System.ComponentModel.DescriptionAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.DescriptionAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.DescriptionAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.DescriptionAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.DescriptionAttribute
    Default
    System.ComponentModel.DescriptionAttribute)
  (define-field-port
    description
    #f
    #f
    (property:)
    System.ComponentModel.DescriptionAttribute
    Description
    System.String))
