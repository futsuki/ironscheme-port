(library (system net web-connection-data)
  (export new
          is?
          web-connection-data?
          init
          request-get
          request-set!
          request-update!
          status-code-get
          status-code-set!
          status-code-update!
          status-description-get
          status-description-set!
          status-description-update!
          headers-get
          headers-set!
          headers-update!
          version-get
          version-set!
          version-update!
          stream-get
          stream-set!
          stream-update!
          challenge-get
          challenge-set!
          challenge-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.WebConnectionData a ...)))))
  (define (is? a) (clr-is System.Net.WebConnectionData a))
  (define (web-connection-data? a)
    (clr-is System.Net.WebConnectionData a))
  (define-method-port
    init
    System.Net.WebConnectionData
    Init
    (System.Void))
  (define-field-port
    request-get
    request-set!
    request-update!
    ()
    System.Net.WebConnectionData
    request
    System.Net.HttpWebRequest)
  (define-field-port
    status-code-get
    status-code-set!
    status-code-update!
    ()
    System.Net.WebConnectionData
    StatusCode
    System.Int32)
  (define-field-port
    status-description-get
    status-description-set!
    status-description-update!
    ()
    System.Net.WebConnectionData
    StatusDescription
    System.String)
  (define-field-port
    headers-get
    headers-set!
    headers-update!
    ()
    System.Net.WebConnectionData
    Headers
    System.Net.WebHeaderCollection)
  (define-field-port
    version-get
    version-set!
    version-update!
    ()
    System.Net.WebConnectionData
    Version
    System.Version)
  (define-field-port
    stream-get
    stream-set!
    stream-update!
    ()
    System.Net.WebConnectionData
    stream
    System.IO.Stream)
  (define-field-port
    challenge-get
    challenge-set!
    challenge-update!
    ()
    System.Net.WebConnectionData
    Challenge
    System.String))
