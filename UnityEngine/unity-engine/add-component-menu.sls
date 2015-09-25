(library (unity-engine add-component-menu)
  (export new is? add-component-menu? component-menu component-order)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AddComponentMenu a ...)))))
  (define (is? a) (clr-is UnityEngine.AddComponentMenu a))
  (define (add-component-menu? a)
    (clr-is UnityEngine.AddComponentMenu a))
  (define-field-port
    component-menu
    #f
    #f
    (property:)
    UnityEngine.AddComponentMenu
    componentMenu
    System.String)
  (define-field-port
    component-order
    #f
    #f
    (property:)
    UnityEngine.AddComponentMenu
    componentOrder
    System.Int32))
