(library (system net file-web-request-creator)
  (export is? file-web-request-creator? create)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.FileWebRequestCreator a))
  (define (file-web-request-creator? a)
    (clr-is System.Net.FileWebRequestCreator a))
  (define-method-port
    create
    System.Net.FileWebRequestCreator
    Create
    (System.Net.WebRequest System.Uri)))
