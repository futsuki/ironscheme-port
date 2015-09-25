(library (unity-engine context-menu)
  (export new is? context-menu? menu-item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.ContextMenu a ...)))))
  (define (is? a) (clr-is UnityEngine.ContextMenu a))
  (define (context-menu? a) (clr-is UnityEngine.ContextMenu a))
  (define-field-port
    menu-item
    #f
    #f
    (property:)
    UnityEngine.ContextMenu
    menuItem
    System.String))
