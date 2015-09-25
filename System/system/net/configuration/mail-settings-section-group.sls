(library (system net configuration mail-settings-section-group)
  (export new is? mail-settings-section-group? smtp)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.MailSettingsSectionGroup
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.MailSettingsSectionGroup a))
  (define (mail-settings-section-group? a)
    (clr-is System.Net.Configuration.MailSettingsSectionGroup a))
  (define-field-port
    smtp
    #f
    #f
    (property:)
    System.Net.Configuration.MailSettingsSectionGroup
    Smtp
    System.Net.Configuration.SmtpSection))
