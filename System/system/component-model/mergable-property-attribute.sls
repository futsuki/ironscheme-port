(library (system component-model mergable-property-attribute)
  (export new
          is?
          mergable-property-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          default
          no
          yes
          allow-merge?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.MergablePropertyAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.MergablePropertyAttribute a))
  (define (mergable-property-attribute? a)
    (clr-is System.ComponentModel.MergablePropertyAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.MergablePropertyAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.MergablePropertyAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.MergablePropertyAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.MergablePropertyAttribute
    Default
    System.ComponentModel.MergablePropertyAttribute)
  (define-field-port
    no
    #f
    #f
    (static:)
    System.ComponentModel.MergablePropertyAttribute
    No
    System.ComponentModel.MergablePropertyAttribute)
  (define-field-port
    yes
    #f
    #f
    (static:)
    System.ComponentModel.MergablePropertyAttribute
    Yes
    System.ComponentModel.MergablePropertyAttribute)
  (define-field-port
    allow-merge?
    #f
    #f
    (property:)
    System.ComponentModel.MergablePropertyAttribute
    AllowMerge
    System.Boolean))
