(library (system component-model design-only-attribute)
  (export new
          is?
          design-only-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          default
          no
          yes
          is-design-only?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.DesignOnlyAttribute a ...)))))
  (define (is? a) (clr-is System.ComponentModel.DesignOnlyAttribute a))
  (define (design-only-attribute? a)
    (clr-is System.ComponentModel.DesignOnlyAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.DesignOnlyAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.DesignOnlyAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.DesignOnlyAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.DesignOnlyAttribute
    Default
    System.ComponentModel.DesignOnlyAttribute)
  (define-field-port
    no
    #f
    #f
    (static:)
    System.ComponentModel.DesignOnlyAttribute
    No
    System.ComponentModel.DesignOnlyAttribute)
  (define-field-port
    yes
    #f
    #f
    (static:)
    System.ComponentModel.DesignOnlyAttribute
    Yes
    System.ComponentModel.DesignOnlyAttribute)
  (define-field-port
    is-design-only?
    #f
    #f
    (property:)
    System.ComponentModel.DesignOnlyAttribute
    IsDesignOnly
    System.Boolean))
