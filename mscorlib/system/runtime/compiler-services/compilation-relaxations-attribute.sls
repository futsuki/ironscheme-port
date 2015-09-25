(library (system
          runtime
          compiler-services
          compilation-relaxations-attribute)
  (export new
          is?
          compilation-relaxations-attribute?
          compilation-relaxations)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.CompilationRelaxationsAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.CompilerServices.CompilationRelaxationsAttribute
      a))
  (define (compilation-relaxations-attribute? a)
    (clr-is
      System.Runtime.CompilerServices.CompilationRelaxationsAttribute
      a))
  (define-field-port
    compilation-relaxations
    #f
    #f
    (property:)
    System.Runtime.CompilerServices.CompilationRelaxationsAttribute
    CompilationRelaxations
    System.Int32))
