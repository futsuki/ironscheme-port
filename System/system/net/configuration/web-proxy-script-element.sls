(library (system net configuration web-proxy-script-element)
  (export new
          is?
          web-proxy-script-element?
          download-timeout-get
          download-timeout-set!
          download-timeout-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.WebProxyScriptElement
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.WebProxyScriptElement a))
  (define (web-proxy-script-element? a)
    (clr-is System.Net.Configuration.WebProxyScriptElement a))
  (define-field-port
    download-timeout-get
    download-timeout-set!
    download-timeout-update!
    (property:)
    System.Net.Configuration.WebProxyScriptElement
    DownloadTimeout
    System.TimeSpan))
