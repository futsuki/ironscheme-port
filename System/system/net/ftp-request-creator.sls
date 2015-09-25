(library (system net ftp-request-creator)
  (export new is? ftp-request-creator? create)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.FtpRequestCreator a ...)))))
  (define (is? a) (clr-is System.Net.FtpRequestCreator a))
  (define (ftp-request-creator? a)
    (clr-is System.Net.FtpRequestCreator a))
  (define-method-port
    create
    System.Net.FtpRequestCreator
    Create
    (System.Net.WebRequest System.Uri)))
