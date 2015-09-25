(library (system mono-type-info)
  (export new
          is?
          mono-type-info?
          full-name-get
          full-name-set!
          full-name-update!
          default-ctor-get
          default-ctor-set!
          default-ctor-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.MonoTypeInfo a ...)))))
  (define (is? a) (clr-is System.MonoTypeInfo a))
  (define (mono-type-info? a) (clr-is System.MonoTypeInfo a))
  (define-field-port
    full-name-get
    full-name-set!
    full-name-update!
    ()
    System.MonoTypeInfo
    full_name
    System.String)
  (define-field-port
    default-ctor-get
    default-ctor-set!
    default-ctor-update!
    ()
    System.MonoTypeInfo
    default_ctor
    System.Reflection.ConstructorInfo))
