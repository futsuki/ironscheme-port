(library (system net mail mail-address-collection)
  (export new is? mail-address-collection? add to-string)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.Mail.MailAddressCollection a ...)))))
  (define (is? a) (clr-is System.Net.Mail.MailAddressCollection a))
  (define (mail-address-collection? a)
    (clr-is System.Net.Mail.MailAddressCollection a))
  (define-method-port
    add
    System.Net.Mail.MailAddressCollection
    Add
    (System.Void System.String))
  (define-method-port
    to-string
    System.Net.Mail.MailAddressCollection
    ToString
    (System.String)))
