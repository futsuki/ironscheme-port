(library (system net mail smtp-failed-recipient-exception)
  (export new
          is?
          smtp-failed-recipient-exception?
          get-object-data
          failed-recipient)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Mail.SmtpFailedRecipientException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Mail.SmtpFailedRecipientException a))
  (define (smtp-failed-recipient-exception? a)
    (clr-is System.Net.Mail.SmtpFailedRecipientException a))
  (define-method-port
    get-object-data
    System.Net.Mail.SmtpFailedRecipientException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    failed-recipient
    #f
    #f
    (property:)
    System.Net.Mail.SmtpFailedRecipientException
    FailedRecipient
    System.String))
