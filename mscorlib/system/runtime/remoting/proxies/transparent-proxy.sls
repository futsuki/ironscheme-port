(library (system runtime remoting proxies transparent-proxy)
  (export new is? transparent-proxy? -rp-get -rp-set! -rp-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Proxies.TransparentProxy
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Proxies.TransparentProxy a))
  (define (transparent-proxy? a)
    (clr-is System.Runtime.Remoting.Proxies.TransparentProxy a))
  (define-field-port
    -rp-get
    -rp-set!
    -rp-update!
    ()
    System.Runtime.Remoting.Proxies.TransparentProxy
    _rp
    System.Runtime.Remoting.Proxies.RealProxy))
