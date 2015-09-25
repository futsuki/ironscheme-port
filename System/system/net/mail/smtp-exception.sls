(library (system net mail smtp-exception)
  (export new
          is?
          smtp-exception?
          get-object-data
          status-code-get
          status-code-set!
          status-code-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.Mail.SmtpException a ...)))))
  (define (is? a) (clr-is System.Net.Mail.SmtpException a))
  (define (smtp-exception? a) (clr-is System.Net.Mail.SmtpException a))
  (define-method-port
    get-object-data
    System.Net.Mail.SmtpException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    status-code-get
    status-code-set!
    status-code-update!
    (property:)
    System.Net.Mail.SmtpException
    StatusCode
    System.Net.Mail.SmtpStatusCode))
