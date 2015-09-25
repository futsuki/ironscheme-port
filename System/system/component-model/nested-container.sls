(library (system component-model nested-container)
  (export new is? nested-container? owner)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.NestedContainer a ...)))))
  (define (is? a) (clr-is System.ComponentModel.NestedContainer a))
  (define (nested-container? a)
    (clr-is System.ComponentModel.NestedContainer a))
  (define-field-port
    owner
    #f
    #f
    (property:)
    System.ComponentModel.NestedContainer
    Owner
    System.ComponentModel.IComponent))
