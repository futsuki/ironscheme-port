(library (system
          component-model
          design
          serialization
          resolve-name-event-args)
  (export new
          is?
          resolve-name-event-args?
          name
          value-get
          value-set!
          value-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.Design.Serialization.ResolveNameEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.ComponentModel.Design.Serialization.ResolveNameEventArgs
      a))
  (define (resolve-name-event-args? a)
    (clr-is
      System.ComponentModel.Design.Serialization.ResolveNameEventArgs
      a))
  (define-field-port
    name
    #f
    #f
    (property:)
    System.ComponentModel.Design.Serialization.ResolveNameEventArgs
    Name
    System.String)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.ComponentModel.Design.Serialization.ResolveNameEventArgs
    Value
    System.Object))
