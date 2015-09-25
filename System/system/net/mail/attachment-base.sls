(library (system net mail attachment-base)
  (export is?
          attachment-base?
          dispose
          content-id-get
          content-id-set!
          content-id-update!
          content-stream
          content-type-get
          content-type-set!
          content-type-update!
          transfer-encoding-get
          transfer-encoding-set!
          transfer-encoding-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.Mail.AttachmentBase a))
  (define (attachment-base? a)
    (clr-is System.Net.Mail.AttachmentBase a))
  (define-method-port
    dispose
    System.Net.Mail.AttachmentBase
    Dispose
    (System.Void))
  (define-field-port
    content-id-get
    content-id-set!
    content-id-update!
    (property:)
    System.Net.Mail.AttachmentBase
    ContentId
    System.String)
  (define-field-port
    content-stream
    #f
    #f
    (property:)
    System.Net.Mail.AttachmentBase
    ContentStream
    System.IO.Stream)
  (define-field-port
    content-type-get
    content-type-set!
    content-type-update!
    (property:)
    System.Net.Mail.AttachmentBase
    ContentType
    System.Net.Mime.ContentType)
  (define-field-port
    transfer-encoding-get
    transfer-encoding-set!
    transfer-encoding-update!
    (property:)
    System.Net.Mail.AttachmentBase
    TransferEncoding
    System.Net.Mime.TransferEncoding))
