(library (system net ftp-status)
  (export new is? ftp-status? status-code status-description)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.FtpStatus a ...)))))
  (define (is? a) (clr-is System.Net.FtpStatus a))
  (define (ftp-status? a) (clr-is System.Net.FtpStatus a))
  (define-field-port
    status-code
    #f
    #f
    (property:)
    System.Net.FtpStatus
    StatusCode
    System.Net.FtpStatusCode)
  (define-field-port
    status-description
    #f
    #f
    (property:)
    System.Net.FtpStatus
    StatusDescription
    System.String))
