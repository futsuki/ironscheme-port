(library (system component-model data-object-method-attribute)
  (export new
          is?
          data-object-method-attribute?
          get-hash-code
          match?
          equals?
          method-type
          is-default?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.DataObjectMethodAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.DataObjectMethodAttribute a))
  (define (data-object-method-attribute? a)
    (clr-is System.ComponentModel.DataObjectMethodAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.DataObjectMethodAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    match?
    System.ComponentModel.DataObjectMethodAttribute
    Match
    (System.Boolean System.Object))
  (define-method-port
    equals?
    System.ComponentModel.DataObjectMethodAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    method-type
    #f
    #f
    (property:)
    System.ComponentModel.DataObjectMethodAttribute
    MethodType
    System.ComponentModel.DataObjectMethodType)
  (define-field-port
    is-default?
    #f
    #f
    (property:)
    System.ComponentModel.DataObjectMethodAttribute
    IsDefault
    System.Boolean))
