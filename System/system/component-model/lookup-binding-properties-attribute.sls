(library (system component-model lookup-binding-properties-attribute)
  (export new
          is?
          lookup-binding-properties-attribute?
          get-hash-code
          equals?
          default
          data-source
          display-member
          lookup-member
          value-member)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.LookupBindingPropertiesAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.LookupBindingPropertiesAttribute a))
  (define (lookup-binding-properties-attribute? a)
    (clr-is System.ComponentModel.LookupBindingPropertiesAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.LookupBindingPropertiesAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.ComponentModel.LookupBindingPropertiesAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.LookupBindingPropertiesAttribute
    Default
    System.ComponentModel.LookupBindingPropertiesAttribute)
  (define-field-port
    data-source
    #f
    #f
    (property:)
    System.ComponentModel.LookupBindingPropertiesAttribute
    DataSource
    System.String)
  (define-field-port
    display-member
    #f
    #f
    (property:)
    System.ComponentModel.LookupBindingPropertiesAttribute
    DisplayMember
    System.String)
  (define-field-port
    lookup-member
    #f
    #f
    (property:)
    System.ComponentModel.LookupBindingPropertiesAttribute
    LookupMember
    System.String)
  (define-field-port
    value-member
    #f
    #f
    (property:)
    System.ComponentModel.LookupBindingPropertiesAttribute
    ValueMember
    System.String))
