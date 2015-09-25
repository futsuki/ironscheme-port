(library (system net configuration http-web-request-element)
  (export new
          is?
          http-web-request-element?
          maximum-error-response-length-get
          maximum-error-response-length-set!
          maximum-error-response-length-update!
          maximum-response-headers-length-get
          maximum-response-headers-length-set!
          maximum-response-headers-length-update!
          maximum-unauthorized-upload-length-get
          maximum-unauthorized-upload-length-set!
          maximum-unauthorized-upload-length-update!
          use-unsafe-header-parsing?-get
          use-unsafe-header-parsing?-set!
          use-unsafe-header-parsing?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.HttpWebRequestElement
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.HttpWebRequestElement a))
  (define (http-web-request-element? a)
    (clr-is System.Net.Configuration.HttpWebRequestElement a))
  (define-field-port
    maximum-error-response-length-get
    maximum-error-response-length-set!
    maximum-error-response-length-update!
    (property:)
    System.Net.Configuration.HttpWebRequestElement
    MaximumErrorResponseLength
    System.Int32)
  (define-field-port
    maximum-response-headers-length-get
    maximum-response-headers-length-set!
    maximum-response-headers-length-update!
    (property:)
    System.Net.Configuration.HttpWebRequestElement
    MaximumResponseHeadersLength
    System.Int32)
  (define-field-port
    maximum-unauthorized-upload-length-get
    maximum-unauthorized-upload-length-set!
    maximum-unauthorized-upload-length-update!
    (property:)
    System.Net.Configuration.HttpWebRequestElement
    MaximumUnauthorizedUploadLength
    System.Int32)
  (define-field-port
    use-unsafe-header-parsing?-get
    use-unsafe-header-parsing?-set!
    use-unsafe-header-parsing?-update!
    (property:)
    System.Net.Configuration.HttpWebRequestElement
    UseUnsafeHeaderParsing
    System.Boolean))
