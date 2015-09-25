(library (system collections case-insensitive-comparer)
  (export new
          is?
          case-insensitive-comparer?
          compare
          default
          default-invariant)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Collections.CaseInsensitiveComparer
             a
             ...)))))
  (define (is? a) (clr-is System.Collections.CaseInsensitiveComparer a))
  (define (case-insensitive-comparer? a)
    (clr-is System.Collections.CaseInsensitiveComparer a))
  (define-method-port
    compare
    System.Collections.CaseInsensitiveComparer
    Compare
    (System.Int32 System.Object System.Object))
  (define-field-port
    default
    #f
    #f
    (static: property:)
    System.Collections.CaseInsensitiveComparer
    Default
    System.Collections.CaseInsensitiveComparer)
  (define-field-port
    default-invariant
    #f
    #f
    (static: property:)
    System.Collections.CaseInsensitiveComparer
    DefaultInvariant
    System.Collections.CaseInsensitiveComparer))
