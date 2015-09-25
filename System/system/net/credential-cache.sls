(library (system net credential-cache)
  (export new
          is?
          credential-cache?
          get-enumerator
          add
          remove
          get-credential
          default-credentials
          default-network-credentials)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.CredentialCache a ...)))))
  (define (is? a) (clr-is System.Net.CredentialCache a))
  (define (credential-cache? a) (clr-is System.Net.CredentialCache a))
  (define-method-port
    get-enumerator
    System.Net.CredentialCache
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add
    System.Net.CredentialCache
    Add
    (System.Void
      System.String
      System.Int32
      System.String
      System.Net.NetworkCredential)
    (System.Void System.Uri System.String System.Net.NetworkCredential))
  (define-method-port
    remove
    System.Net.CredentialCache
    Remove
    (System.Void System.String System.Int32 System.String)
    (System.Void System.Uri System.String))
  (define-method-port
    get-credential
    System.Net.CredentialCache
    GetCredential
    (System.Net.NetworkCredential
      System.String
      System.Int32
      System.String)
    (System.Net.NetworkCredential System.Uri System.String))
  (define-field-port
    default-credentials
    #f
    #f
    (static: property:)
    System.Net.CredentialCache
    DefaultCredentials
    System.Net.ICredentials)
  (define-field-port
    default-network-credentials
    #f
    #f
    (static: property:)
    System.Net.CredentialCache
    DefaultNetworkCredentials
    System.Net.NetworkCredential))
