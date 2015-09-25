(library (system component-model component-collection)
  (export new is? component-collection? copy-to item item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.ComponentCollection a ...)))))
  (define (is? a) (clr-is System.ComponentModel.ComponentCollection a))
  (define (component-collection? a)
    (clr-is System.ComponentModel.ComponentCollection a))
  (define-method-port
    copy-to
    System.ComponentModel.ComponentCollection
    CopyTo
    (System.Void System.ComponentModel.IComponent[] System.Int32))
  (define-field-port
    item
    #f
    #f
    (property:)
    System.ComponentModel.ComponentCollection
    Item
    System.ComponentModel.IComponent)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.ComponentModel.ComponentCollection
    Item
    System.ComponentModel.IComponent))
