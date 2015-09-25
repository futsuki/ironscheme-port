(library (system component-model design-time-visible-attribute)
  (export new
          is?
          design-time-visible-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          default
          no
          yes
          visible?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.DesignTimeVisibleAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.DesignTimeVisibleAttribute a))
  (define (design-time-visible-attribute? a)
    (clr-is System.ComponentModel.DesignTimeVisibleAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.DesignTimeVisibleAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.DesignTimeVisibleAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.DesignTimeVisibleAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.DesignTimeVisibleAttribute
    Default
    System.ComponentModel.DesignTimeVisibleAttribute)
  (define-field-port
    no
    #f
    #f
    (static:)
    System.ComponentModel.DesignTimeVisibleAttribute
    No
    System.ComponentModel.DesignTimeVisibleAttribute)
  (define-field-port
    yes
    #f
    #f
    (static:)
    System.ComponentModel.DesignTimeVisibleAttribute
    Yes
    System.ComponentModel.DesignTimeVisibleAttribute)
  (define-field-port
    visible?
    #f
    #f
    (property:)
    System.ComponentModel.DesignTimeVisibleAttribute
    Visible
    System.Boolean))
