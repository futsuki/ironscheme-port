(library (system component-model weak-object-wrapper)
  (export new is? weak-object-wrapper? target-hash-code weak)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.WeakObjectWrapper a ...)))))
  (define (is? a) (clr-is System.ComponentModel.WeakObjectWrapper a))
  (define (weak-object-wrapper? a)
    (clr-is System.ComponentModel.WeakObjectWrapper a))
  (define-field-port
    target-hash-code
    #f
    #f
    (property:)
    System.ComponentModel.WeakObjectWrapper
    TargetHashCode
    System.Int32)
  (define-field-port
    weak
    #f
    #f
    (property:)
    System.ComponentModel.WeakObjectWrapper
    Weak
    System.WeakReference))
