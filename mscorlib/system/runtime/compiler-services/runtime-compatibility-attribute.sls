(library (system
          runtime
          compiler-services
          runtime-compatibility-attribute)
  (export new
          is?
          runtime-compatibility-attribute?
          wrap-non-exception-throws?-get
          wrap-non-exception-throws?-set!
          wrap-non-exception-throws?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.RuntimeCompatibilityAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.CompilerServices.RuntimeCompatibilityAttribute
      a))
  (define (runtime-compatibility-attribute? a)
    (clr-is
      System.Runtime.CompilerServices.RuntimeCompatibilityAttribute
      a))
  (define-field-port
    wrap-non-exception-throws?-get
    wrap-non-exception-throws?-set!
    wrap-non-exception-throws?-update!
    (property:)
    System.Runtime.CompilerServices.RuntimeCompatibilityAttribute
    WrapNonExceptionThrows
    System.Boolean))
