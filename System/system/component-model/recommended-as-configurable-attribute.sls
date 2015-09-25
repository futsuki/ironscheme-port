(library (system component-model recommended-as-configurable-attribute)
  (export new
          is?
          recommended-as-configurable-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          default
          no
          yes
          recommended-as-configurable?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.RecommendedAsConfigurableAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.RecommendedAsConfigurableAttribute a))
  (define (recommended-as-configurable-attribute? a)
    (clr-is System.ComponentModel.RecommendedAsConfigurableAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.RecommendedAsConfigurableAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.RecommendedAsConfigurableAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.RecommendedAsConfigurableAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.RecommendedAsConfigurableAttribute
    Default
    System.ComponentModel.RecommendedAsConfigurableAttribute)
  (define-field-port
    no
    #f
    #f
    (static:)
    System.ComponentModel.RecommendedAsConfigurableAttribute
    No
    System.ComponentModel.RecommendedAsConfigurableAttribute)
  (define-field-port
    yes
    #f
    #f
    (static:)
    System.ComponentModel.RecommendedAsConfigurableAttribute
    Yes
    System.ComponentModel.RecommendedAsConfigurableAttribute)
  (define-field-port
    recommended-as-configurable?
    #f
    #f
    (property:)
    System.ComponentModel.RecommendedAsConfigurableAttribute
    RecommendedAsConfigurable
    System.Boolean))
