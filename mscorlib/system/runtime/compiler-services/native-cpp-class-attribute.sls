(library (system runtime compiler-services native-cpp-class-attribute)
  (export new is? native-cpp-class-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.NativeCppClassAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.NativeCppClassAttribute a))
  (define (native-cpp-class-attribute? a)
    (clr-is System.Runtime.CompilerServices.NativeCppClassAttribute a)))
