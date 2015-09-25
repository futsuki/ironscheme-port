(library (system
          runtime
          compiler-services
          compiler-global-scope-attribute)
  (export new is? compiler-global-scope-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.CompilerGlobalScopeAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.CompilerServices.CompilerGlobalScopeAttribute
      a))
  (define (compiler-global-scope-attribute? a)
    (clr-is
      System.Runtime.CompilerServices.CompilerGlobalScopeAttribute
      a)))
