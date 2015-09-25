(library (system component-model weak-object-wrapper-comparer)
  (export new is? weak-object-wrapper-comparer? get-hash-code equals?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.WeakObjectWrapperComparer
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.WeakObjectWrapperComparer a))
  (define (weak-object-wrapper-comparer? a)
    (clr-is System.ComponentModel.WeakObjectWrapperComparer a))
  (define-method-port
    get-hash-code
    System.ComponentModel.WeakObjectWrapperComparer
    GetHashCode
    (System.Int32 System.ComponentModel.WeakObjectWrapper))
  (define-method-port
    equals?
    System.ComponentModel.WeakObjectWrapperComparer
    Equals
    (System.Boolean
      System.ComponentModel.WeakObjectWrapper
      System.ComponentModel.WeakObjectWrapper)))
