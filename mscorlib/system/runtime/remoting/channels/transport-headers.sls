(library (system runtime remoting channels transport-headers)
  (export new
          is?
          transport-headers?
          get-enumerator
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Channels.TransportHeaders
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Channels.TransportHeaders a))
  (define (transport-headers? a)
    (clr-is System.Runtime.Remoting.Channels.TransportHeaders a))
  (define-method-port
    get-enumerator
    System.Runtime.Remoting.Channels.TransportHeaders
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Runtime.Remoting.Channels.TransportHeaders
    Item
    System.Object))
