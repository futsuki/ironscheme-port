(library (system net mail alternate-view)
  (export new
          is?
          alternate-view?
          create-alternate-view-from-string
          base-uri-get
          base-uri-set!
          base-uri-update!
          linked-resources)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.Mail.AlternateView a ...)))))
  (define (is? a) (clr-is System.Net.Mail.AlternateView a))
  (define (alternate-view? a) (clr-is System.Net.Mail.AlternateView a))
  (define-method-port
    create-alternate-view-from-string
    System.Net.Mail.AlternateView
    CreateAlternateViewFromString
    (static:
      System.Net.Mail.AlternateView
      System.String
      System.Text.Encoding
      System.String)
    (static:
      System.Net.Mail.AlternateView
      System.String
      System.Net.Mime.ContentType)
    (static: System.Net.Mail.AlternateView System.String))
  (define-field-port
    base-uri-get
    base-uri-set!
    base-uri-update!
    (property:)
    System.Net.Mail.AlternateView
    BaseUri
    System.Uri)
  (define-field-port
    linked-resources
    #f
    #f
    (property:)
    System.Net.Mail.AlternateView
    LinkedResources
    System.Net.Mail.LinkedResourceCollection))
