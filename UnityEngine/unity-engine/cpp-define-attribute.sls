(library (unity-engine cpp-define-attribute)
  (export new is? cpp-define-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.CppDefineAttribute a ...)))))
  (define (is? a) (clr-is UnityEngine.CppDefineAttribute a))
  (define (cpp-define-attribute? a)
    (clr-is UnityEngine.CppDefineAttribute a)))