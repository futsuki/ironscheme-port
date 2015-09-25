(library (system net http-utility)
  (export is? http-utility? url-decode)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.HttpUtility a))
  (define (http-utility? a) (clr-is System.Net.HttpUtility a))
  (define-method-port
    url-decode
    System.Net.HttpUtility
    UrlDecode
    (static: System.String System.String System.Text.Encoding)
    (static: System.String System.String)))
