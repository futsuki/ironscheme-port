(library (system net end-point-listener)
  (export new
          is?
          end-point-listener?
          add-prefix
          unbind-context
          remove-prefix
          bind-context?
          close)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.EndPointListener a ...)))))
  (define (is? a) (clr-is System.Net.EndPointListener a))
  (define (end-point-listener? a)
    (clr-is System.Net.EndPointListener a))
  (define-method-port
    add-prefix
    System.Net.EndPointListener
    AddPrefix
    (System.Void System.Net.ListenerPrefix System.Net.HttpListener))
  (define-method-port
    unbind-context
    System.Net.EndPointListener
    UnbindContext
    (System.Void System.Net.HttpListenerContext))
  (define-method-port
    remove-prefix
    System.Net.EndPointListener
    RemovePrefix
    (System.Void System.Net.ListenerPrefix System.Net.HttpListener))
  (define-method-port
    bind-context?
    System.Net.EndPointListener
    BindContext
    (System.Boolean System.Net.HttpListenerContext))
  (define-method-port
    close
    System.Net.EndPointListener
    Close
    (System.Void)))
