(library (system component-model container)
  (export new is? container? dispose add remove components)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.ComponentModel.Container a ...)))))
  (define (is? a) (clr-is System.ComponentModel.Container a))
  (define (container? a) (clr-is System.ComponentModel.Container a))
  (define-method-port
    dispose
    System.ComponentModel.Container
    Dispose
    (System.Void))
  (define-method-port
    add
    System.ComponentModel.Container
    Add
    (System.Void System.ComponentModel.IComponent System.String)
    (System.Void System.ComponentModel.IComponent))
  (define-method-port
    remove
    System.ComponentModel.Container
    Remove
    (System.Void System.ComponentModel.IComponent))
  (define-field-port
    components
    #f
    #f
    (property:)
    System.ComponentModel.Container
    Components
    System.ComponentModel.ComponentCollection))
