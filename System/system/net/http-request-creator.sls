(library (system net http-request-creator)
  (export is? http-request-creator? create)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.HttpRequestCreator a))
  (define (http-request-creator? a)
    (clr-is System.Net.HttpRequestCreator a))
  (define-method-port
    create
    System.Net.HttpRequestCreator
    Create
    (System.Net.WebRequest System.Uri)))
