(library (system runtime compiler-services has-copy-semantics-attribute)
  (export new is? has-copy-semantics-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.HasCopySemanticsAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.CompilerServices.HasCopySemanticsAttribute
      a))
  (define (has-copy-semantics-attribute? a)
    (clr-is
      System.Runtime.CompilerServices.HasCopySemanticsAttribute
      a)))
