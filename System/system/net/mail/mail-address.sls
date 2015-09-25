(library (system net mail mail-address)
  (export new
          is?
          mail-address?
          get-hash-code
          to-string
          equals?
          address
          display-name
          host
          user)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.Mail.MailAddress a ...)))))
  (define (is? a) (clr-is System.Net.Mail.MailAddress a))
  (define (mail-address? a) (clr-is System.Net.Mail.MailAddress a))
  (define-method-port
    get-hash-code
    System.Net.Mail.MailAddress
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.Net.Mail.MailAddress
    ToString
    (System.String))
  (define-method-port
    equals?
    System.Net.Mail.MailAddress
    Equals
    (System.Boolean System.Object))
  (define-field-port
    address
    #f
    #f
    (property:)
    System.Net.Mail.MailAddress
    Address
    System.String)
  (define-field-port
    display-name
    #f
    #f
    (property:)
    System.Net.Mail.MailAddress
    DisplayName
    System.String)
  (define-field-port
    host
    #f
    #f
    (property:)
    System.Net.Mail.MailAddress
    Host
    System.String)
  (define-field-port
    user
    #f
    #f
    (property:)
    System.Net.Mail.MailAddress
    User
    System.String))
