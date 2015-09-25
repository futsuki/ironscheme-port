(library (system net mail attachment)
  (export new
          is?
          attachment?
          create-attachment-from-string
          content-disposition
          name-get
          name-set!
          name-update!
          name-encoding-get
          name-encoding-set!
          name-encoding-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.Mail.Attachment a ...)))))
  (define (is? a) (clr-is System.Net.Mail.Attachment a))
  (define (attachment? a) (clr-is System.Net.Mail.Attachment a))
  (define-method-port
    create-attachment-from-string
    System.Net.Mail.Attachment
    CreateAttachmentFromString
    (static:
      System.Net.Mail.Attachment
      System.String
      System.String
      System.Text.Encoding
      System.String)
    (static: System.Net.Mail.Attachment System.String System.String)
    (static:
      System.Net.Mail.Attachment
      System.String
      System.Net.Mime.ContentType))
  (define-field-port
    content-disposition
    #f
    #f
    (property:)
    System.Net.Mail.Attachment
    ContentDisposition
    System.Net.Mime.ContentDisposition)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Net.Mail.Attachment
    Name
    System.String)
  (define-field-port
    name-encoding-get
    name-encoding-set!
    name-encoding-update!
    (property:)
    System.Net.Mail.Attachment
    NameEncoding
    System.Text.Encoding))
