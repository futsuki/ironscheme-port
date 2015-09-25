(library (mono runtime)
  (export new is? runtime?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e () ((_ a ...) #'(clr-new Mono.Runtime a ...)))))
  (define (is? a) (clr-is Mono.Runtime a))
  (define (runtime? a) (clr-is Mono.Runtime a)))
