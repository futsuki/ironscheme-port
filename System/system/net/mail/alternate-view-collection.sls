(library (system net mail alternate-view-collection)
  (export is? alternate-view-collection? dispose)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.Mail.AlternateViewCollection a))
  (define (alternate-view-collection? a)
    (clr-is System.Net.Mail.AlternateViewCollection a))
  (define-method-port
    dispose
    System.Net.Mail.AlternateViewCollection
    Dispose
    (System.Void)))
