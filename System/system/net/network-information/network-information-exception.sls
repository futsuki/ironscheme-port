(library (system net network-information network-information-exception)
  (export new is? network-information-exception? error-code)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.NetworkInformationException
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Net.NetworkInformation.NetworkInformationException
      a))
  (define (network-information-exception? a)
    (clr-is
      System.Net.NetworkInformation.NetworkInformationException
      a))
  (define-field-port
    error-code
    #f
    #f
    (property:)
    System.Net.NetworkInformation.NetworkInformationException
    ErrorCode
    System.Int32))
