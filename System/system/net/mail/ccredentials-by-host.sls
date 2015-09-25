(library (system net mail ccredentials-by-host)
  (export new is? ccredentials-by-host? get-credential)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.Mail.CCredentialsByHost a ...)))))
  (define (is? a) (clr-is System.Net.Mail.CCredentialsByHost a))
  (define (ccredentials-by-host? a)
    (clr-is System.Net.Mail.CCredentialsByHost a))
  (define-method-port
    get-credential
    System.Net.Mail.CCredentialsByHost
    GetCredential
    (System.Net.NetworkCredential
      System.String
      System.Int32
      System.String)))
