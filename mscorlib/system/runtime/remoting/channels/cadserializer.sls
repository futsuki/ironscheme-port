(library (system runtime remoting channels cadserializer)
  (export new is? cadserializer?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Channels.CADSerializer
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Channels.CADSerializer a))
  (define (cadserializer? a)
    (clr-is System.Runtime.Remoting.Channels.CADSerializer a)))
