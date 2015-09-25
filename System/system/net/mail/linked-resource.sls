(library (system net mail linked-resource)
  (export new
          is?
          linked-resource?
          create-linked-resource-from-string
          content-link-get
          content-link-set!
          content-link-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.Mail.LinkedResource a ...)))))
  (define (is? a) (clr-is System.Net.Mail.LinkedResource a))
  (define (linked-resource? a)
    (clr-is System.Net.Mail.LinkedResource a))
  (define-method-port
    create-linked-resource-from-string
    System.Net.Mail.LinkedResource
    CreateLinkedResourceFromString
    (static:
      System.Net.Mail.LinkedResource
      System.String
      System.Text.Encoding
      System.String)
    (static:
      System.Net.Mail.LinkedResource
      System.String
      System.Net.Mime.ContentType)
    (static: System.Net.Mail.LinkedResource System.String))
  (define-field-port
    content-link-get
    content-link-set!
    content-link-update!
    (property:)
    System.Net.Mail.LinkedResource
    ContentLink
    System.Uri))
