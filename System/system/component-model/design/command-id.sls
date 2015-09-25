(library (system component-model design command-id)
  (export new is? command-id? get-hash-code to-string equals? guid id)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.Design.CommandID a ...)))))
  (define (is? a) (clr-is System.ComponentModel.Design.CommandID a))
  (define (command-id? a)
    (clr-is System.ComponentModel.Design.CommandID a))
  (define-method-port
    get-hash-code
    System.ComponentModel.Design.CommandID
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.ComponentModel.Design.CommandID
    ToString
    (System.String))
  (define-method-port
    equals?
    System.ComponentModel.Design.CommandID
    Equals
    (System.Boolean System.Object))
  (define-field-port
    guid
    #f
    #f
    (property:)
    System.ComponentModel.Design.CommandID
    Guid
    System.Guid)
  (define-field-port
    id
    #f
    #f
    (property:)
    System.ComponentModel.Design.CommandID
    ID
    System.Int32))
