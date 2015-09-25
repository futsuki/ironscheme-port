(library (system reflection obfuscate-assembly-attribute)
  (export new
          is?
          obfuscate-assembly-attribute?
          assembly-is-private?
          strip-after-obfuscation?-get
          strip-after-obfuscation?-set!
          strip-after-obfuscation?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.ObfuscateAssemblyAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Reflection.ObfuscateAssemblyAttribute a))
  (define (obfuscate-assembly-attribute? a)
    (clr-is System.Reflection.ObfuscateAssemblyAttribute a))
  (define-field-port
    assembly-is-private?
    #f
    #f
    (property:)
    System.Reflection.ObfuscateAssemblyAttribute
    AssemblyIsPrivate
    System.Boolean)
  (define-field-port
    strip-after-obfuscation?-get
    strip-after-obfuscation?-set!
    strip-after-obfuscation?-update!
    (property:)
    System.Reflection.ObfuscateAssemblyAttribute
    StripAfterObfuscation
    System.Boolean))
