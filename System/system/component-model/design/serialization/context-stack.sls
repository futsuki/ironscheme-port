(library (system component-model design serialization context-stack)
  (export new is? context-stack? append push pop current item item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.Design.Serialization.ContextStack
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.Design.Serialization.ContextStack a))
  (define (context-stack? a)
    (clr-is System.ComponentModel.Design.Serialization.ContextStack a))
  (define-method-port
    append
    System.ComponentModel.Design.Serialization.ContextStack
    Append
    (System.Void System.Object))
  (define-method-port
    push
    System.ComponentModel.Design.Serialization.ContextStack
    Push
    (System.Void System.Object))
  (define-method-port
    pop
    System.ComponentModel.Design.Serialization.ContextStack
    Pop
    (System.Object))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.ComponentModel.Design.Serialization.ContextStack
    Current
    System.Object)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.ComponentModel.Design.Serialization.ContextStack
    Item
    System.Object)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.ComponentModel.Design.Serialization.ContextStack
    Item
    System.Object))
