(library (system resources runtime-resource-set)
  (export new is? runtime-resource-set? get-object)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Resources.RuntimeResourceSet a ...)))))
  (define (is? a) (clr-is System.Resources.RuntimeResourceSet a))
  (define (runtime-resource-set? a)
    (clr-is System.Resources.RuntimeResourceSet a))
  (define-method-port
    get-object
    System.Resources.RuntimeResourceSet
    GetObject
    (System.Object System.String System.Boolean)
    (System.Object System.String)))
