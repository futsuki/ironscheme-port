(library (system net global-proxy-selection)
  (export new
          is?
          global-proxy-selection?
          get-empty-web-proxy
          select-get
          select-set!
          select-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.GlobalProxySelection a ...)))))
  (define (is? a) (clr-is System.Net.GlobalProxySelection a))
  (define (global-proxy-selection? a)
    (clr-is System.Net.GlobalProxySelection a))
  (define-method-port
    get-empty-web-proxy
    System.Net.GlobalProxySelection
    GetEmptyWebProxy
    (static: System.Net.IWebProxy))
  (define-field-port
    select-get
    select-set!
    select-update!
    (static: property:)
    System.Net.GlobalProxySelection
    Select
    System.Net.IWebProxy))
