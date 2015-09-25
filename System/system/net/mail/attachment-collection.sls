(library (system net mail attachment-collection)
  (export is? attachment-collection? dispose)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.Mail.AttachmentCollection a))
  (define (attachment-collection? a)
    (clr-is System.Net.Mail.AttachmentCollection a))
  (define-method-port
    dispose
    System.Net.Mail.AttachmentCollection
    Dispose
    (System.Void)))
