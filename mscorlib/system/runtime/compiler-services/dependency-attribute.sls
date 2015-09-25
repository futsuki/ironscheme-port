(library (system runtime compiler-services dependency-attribute)
  (export new is? dependency-attribute? dependent-assembly load-hint)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.DependencyAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.DependencyAttribute a))
  (define (dependency-attribute? a)
    (clr-is System.Runtime.CompilerServices.DependencyAttribute a))
  (define-field-port
    dependent-assembly
    #f
    #f
    (property:)
    System.Runtime.CompilerServices.DependencyAttribute
    DependentAssembly
    System.String)
  (define-field-port
    load-hint
    #f
    #f
    (property:)
    System.Runtime.CompilerServices.DependencyAttribute
    LoadHint
    System.Runtime.CompilerServices.LoadHint))
