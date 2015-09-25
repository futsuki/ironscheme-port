(library (system component-model design help-keyword-attribute)
  (export new
          is?
          help-keyword-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          default
          help-keyword)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.Design.HelpKeywordAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.Design.HelpKeywordAttribute a))
  (define (help-keyword-attribute? a)
    (clr-is System.ComponentModel.Design.HelpKeywordAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.Design.HelpKeywordAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.Design.HelpKeywordAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.Design.HelpKeywordAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.Design.HelpKeywordAttribute
    Default
    System.ComponentModel.Design.HelpKeywordAttribute)
  (define-field-port
    help-keyword
    #f
    #f
    (property:)
    System.ComponentModel.Design.HelpKeywordAttribute
    HelpKeyword
    System.String))
