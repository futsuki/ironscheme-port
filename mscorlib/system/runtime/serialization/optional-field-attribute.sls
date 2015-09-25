(library (system runtime serialization optional-field-attribute)
  (export new
          is?
          optional-field-attribute?
          version-added-get
          version-added-set!
          version-added-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.OptionalFieldAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Serialization.OptionalFieldAttribute a))
  (define (optional-field-attribute? a)
    (clr-is System.Runtime.Serialization.OptionalFieldAttribute a))
  (define-field-port
    version-added-get
    version-added-set!
    version-added-update!
    (property:)
    System.Runtime.Serialization.OptionalFieldAttribute
    VersionAdded
    System.Int32))
