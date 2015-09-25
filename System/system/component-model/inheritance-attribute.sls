(library (system component-model inheritance-attribute)
  (export new
          is?
          inheritance-attribute?
          get-hash-code
          is-default-attribute?
          to-string
          equals?
          default
          inherited
          inherited-read-only
          not-inherited
          inheritance-level)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.InheritanceAttribute
             a
             ...)))))
  (define (is? a) (clr-is System.ComponentModel.InheritanceAttribute a))
  (define (inheritance-attribute? a)
    (clr-is System.ComponentModel.InheritanceAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.InheritanceAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.InheritanceAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    to-string
    System.ComponentModel.InheritanceAttribute
    ToString
    (System.String))
  (define-method-port
    equals?
    System.ComponentModel.InheritanceAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.InheritanceAttribute
    Default
    System.ComponentModel.InheritanceAttribute)
  (define-field-port
    inherited
    #f
    #f
    (static:)
    System.ComponentModel.InheritanceAttribute
    Inherited
    System.ComponentModel.InheritanceAttribute)
  (define-field-port
    inherited-read-only
    #f
    #f
    (static:)
    System.ComponentModel.InheritanceAttribute
    InheritedReadOnly
    System.ComponentModel.InheritanceAttribute)
  (define-field-port
    not-inherited
    #f
    #f
    (static:)
    System.ComponentModel.InheritanceAttribute
    NotInherited
    System.ComponentModel.InheritanceAttribute)
  (define-field-port
    inheritance-level
    #f
    #f
    (property:)
    System.ComponentModel.InheritanceAttribute
    InheritanceLevel
    System.ComponentModel.InheritanceLevel))
