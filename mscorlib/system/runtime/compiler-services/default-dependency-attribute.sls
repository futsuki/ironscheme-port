(library (system runtime compiler-services default-dependency-attribute)
  (export new is? default-dependency-attribute? load-hint)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.DefaultDependencyAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.CompilerServices.DefaultDependencyAttribute
      a))
  (define (default-dependency-attribute? a)
    (clr-is
      System.Runtime.CompilerServices.DefaultDependencyAttribute
      a))
  (define-field-port
    load-hint
    #f
    #f
    (property:)
    System.Runtime.CompilerServices.DefaultDependencyAttribute
    LoadHint
    System.Runtime.CompilerServices.LoadHint))
