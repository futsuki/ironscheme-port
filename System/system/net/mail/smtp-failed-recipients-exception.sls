(library (system net mail smtp-failed-recipients-exception)
  (export new
          is?
          smtp-failed-recipients-exception?
          get-object-data
          inner-exceptions)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Mail.SmtpFailedRecipientsException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Mail.SmtpFailedRecipientsException a))
  (define (smtp-failed-recipients-exception? a)
    (clr-is System.Net.Mail.SmtpFailedRecipientsException a))
  (define-method-port
    get-object-data
    System.Net.Mail.SmtpFailedRecipientsException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    inner-exceptions
    #f
    #f
    (property:)
    System.Net.Mail.SmtpFailedRecipientsException
    InnerExceptions
    System.Net.Mail.SmtpFailedRecipientException[]))
