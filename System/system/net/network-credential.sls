(library (system net network-credential)
  (export new
          is?
          network-credential?
          get-credential
          domain-get
          domain-set!
          domain-update!
          user-name-get
          user-name-set!
          user-name-update!
          password-get
          password-set!
          password-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.NetworkCredential a ...)))))
  (define (is? a) (clr-is System.Net.NetworkCredential a))
  (define (network-credential? a)
    (clr-is System.Net.NetworkCredential a))
  (define-method-port
    get-credential
    System.Net.NetworkCredential
    GetCredential
    (System.Net.NetworkCredential
      System.String
      System.Int32
      System.String)
    (System.Net.NetworkCredential System.Uri System.String))
  (define-field-port
    domain-get
    domain-set!
    domain-update!
    (property:)
    System.Net.NetworkCredential
    Domain
    System.String)
  (define-field-port
    user-name-get
    user-name-set!
    user-name-update!
    (property:)
    System.Net.NetworkCredential
    UserName
    System.String)
  (define-field-port
    password-get
    password-set!
    password-update!
    (property:)
    System.Net.NetworkCredential
    Password
    System.String))
