(library (system component-model editor-browsable-attribute)
  (export new
          is?
          editor-browsable-attribute?
          get-hash-code
          equals?
          state)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.EditorBrowsableAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.EditorBrowsableAttribute a))
  (define (editor-browsable-attribute? a)
    (clr-is System.ComponentModel.EditorBrowsableAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.EditorBrowsableAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.ComponentModel.EditorBrowsableAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    state
    #f
    #f
    (property:)
    System.ComponentModel.EditorBrowsableAttribute
    State
    System.ComponentModel.EditorBrowsableState))
