(library (system delegate-data)
  (export new
          is?
          delegate-data?
          target-type-get
          target-type-set!
          target-type-update!
          method-name-get
          method-name-set!
          method-name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.DelegateData a ...)))))
  (define (is? a) (clr-is System.DelegateData a))
  (define (delegate-data? a) (clr-is System.DelegateData a))
  (define-field-port
    target-type-get
    target-type-set!
    target-type-update!
    ()
    System.DelegateData
    target_type
    System.Type)
  (define-field-port
    method-name-get
    method-name-set!
    method-name-update!
    ()
    System.DelegateData
    method_name
    System.String))
