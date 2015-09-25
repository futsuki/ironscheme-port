(library (unity-engine context-menu-item-attribute)
  (export new is? context-menu-item-attribute? name function)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.ContextMenuItemAttribute a ...)))))
  (define (is? a) (clr-is UnityEngine.ContextMenuItemAttribute a))
  (define (context-menu-item-attribute? a)
    (clr-is UnityEngine.ContextMenuItemAttribute a))
  (define-field-port
    name
    #f
    #f
    ()
    UnityEngine.ContextMenuItemAttribute
    name
    System.String)
  (define-field-port
    function
    #f
    #f
    ()
    UnityEngine.ContextMenuItemAttribute
    function
    System.String))
