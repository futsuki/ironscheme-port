(library (system component-model parenthesize-property-name-attribute)
  (export new
          is?
          parenthesize-property-name-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          default
          need-parenthesis?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.ParenthesizePropertyNameAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.ParenthesizePropertyNameAttribute a))
  (define (parenthesize-property-name-attribute? a)
    (clr-is System.ComponentModel.ParenthesizePropertyNameAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.ParenthesizePropertyNameAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.ParenthesizePropertyNameAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.ParenthesizePropertyNameAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.ParenthesizePropertyNameAttribute
    Default
    System.ComponentModel.ParenthesizePropertyNameAttribute)
  (define-field-port
    need-parenthesis?
    #f
    #f
    (property:)
    System.ComponentModel.ParenthesizePropertyNameAttribute
    NeedParenthesis
    System.Boolean))
