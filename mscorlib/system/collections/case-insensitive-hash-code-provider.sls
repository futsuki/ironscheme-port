(library (system collections case-insensitive-hash-code-provider)
  (export new
          is?
          case-insensitive-hash-code-provider?
          get-hash-code
          default
          default-invariant)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Collections.CaseInsensitiveHashCodeProvider
             a
             ...)))))
  (define (is? a)
    (clr-is System.Collections.CaseInsensitiveHashCodeProvider a))
  (define (case-insensitive-hash-code-provider? a)
    (clr-is System.Collections.CaseInsensitiveHashCodeProvider a))
  (define-method-port
    get-hash-code
    System.Collections.CaseInsensitiveHashCodeProvider
    GetHashCode
    (System.Int32 System.Object))
  (define-field-port
    default
    #f
    #f
    (static: property:)
    System.Collections.CaseInsensitiveHashCodeProvider
    Default
    System.Collections.CaseInsensitiveHashCodeProvider)
  (define-field-port
    default-invariant
    #f
    #f
    (static: property:)
    System.Collections.CaseInsensitiveHashCodeProvider
    DefaultInvariant
    System.Collections.CaseInsensitiveHashCodeProvider))
