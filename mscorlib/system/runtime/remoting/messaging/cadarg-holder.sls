(library (system runtime remoting messaging cadarg-holder)
  (export new is? cadarg-holder? index-get index-set! index-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.CADArgHolder
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Messaging.CADArgHolder a))
  (define (cadarg-holder? a)
    (clr-is System.Runtime.Remoting.Messaging.CADArgHolder a))
  (define-field-port
    index-get
    index-set!
    index-update!
    ()
    System.Runtime.Remoting.Messaging.CADArgHolder
    index
    System.Int32))
