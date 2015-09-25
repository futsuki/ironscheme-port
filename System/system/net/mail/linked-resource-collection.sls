(library (system net mail linked-resource-collection)
  (export is? linked-resource-collection? dispose)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.Mail.LinkedResourceCollection a))
  (define (linked-resource-collection? a)
    (clr-is System.Net.Mail.LinkedResourceCollection a))
  (define-method-port
    dispose
    System.Net.Mail.LinkedResourceCollection
    Dispose
    (System.Void)))
