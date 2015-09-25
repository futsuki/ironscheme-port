(library (system reflection obfuscation-attribute)
  (export new
          is?
          obfuscation-attribute?
          exclude?-get
          exclude?-set!
          exclude?-update!
          strip-after-obfuscation?-get
          strip-after-obfuscation?-set!
          strip-after-obfuscation?-update!
          apply-to-members?-get
          apply-to-members?-set!
          apply-to-members?-update!
          feature-get
          feature-set!
          feature-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Reflection.ObfuscationAttribute a ...)))))
  (define (is? a) (clr-is System.Reflection.ObfuscationAttribute a))
  (define (obfuscation-attribute? a)
    (clr-is System.Reflection.ObfuscationAttribute a))
  (define-field-port
    exclude?-get
    exclude?-set!
    exclude?-update!
    (property:)
    System.Reflection.ObfuscationAttribute
    Exclude
    System.Boolean)
  (define-field-port
    strip-after-obfuscation?-get
    strip-after-obfuscation?-set!
    strip-after-obfuscation?-update!
    (property:)
    System.Reflection.ObfuscationAttribute
    StripAfterObfuscation
    System.Boolean)
  (define-field-port
    apply-to-members?-get
    apply-to-members?-set!
    apply-to-members?-update!
    (property:)
    System.Reflection.ObfuscationAttribute
    ApplyToMembers
    System.Boolean)
  (define-field-port
    feature-get
    feature-set!
    feature-update!
    (property:)
    System.Reflection.ObfuscationAttribute
    Feature
    System.String))
