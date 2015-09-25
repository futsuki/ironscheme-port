(library (system component-model browsable-attribute)
  (export new
          is?
          browsable-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          default
          no
          yes
          browsable?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.BrowsableAttribute a ...)))))
  (define (is? a) (clr-is System.ComponentModel.BrowsableAttribute a))
  (define (browsable-attribute? a)
    (clr-is System.ComponentModel.BrowsableAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.BrowsableAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.BrowsableAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.BrowsableAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.BrowsableAttribute
    Default
    System.ComponentModel.BrowsableAttribute)
  (define-field-port
    no
    #f
    #f
    (static:)
    System.ComponentModel.BrowsableAttribute
    No
    System.ComponentModel.BrowsableAttribute)
  (define-field-port
    yes
    #f
    #f
    (static:)
    System.ComponentModel.BrowsableAttribute
    Yes
    System.ComponentModel.BrowsableAttribute)
  (define-field-port
    browsable?
    #f
    #f
    (property:)
    System.ComponentModel.BrowsableAttribute
    Browsable
    System.Boolean))
