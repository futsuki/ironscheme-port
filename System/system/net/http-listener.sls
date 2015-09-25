(library (system net http-listener)
  (export new
          is?
          http-listener?
          end-get-context
          begin-get-context
          get-context
          stop
          start
          abort
          close
          authentication-schemes-get
          authentication-schemes-set!
          authentication-schemes-update!
          authentication-scheme-selector-delegate-get
          authentication-scheme-selector-delegate-set!
          authentication-scheme-selector-delegate-update!
          ignore-write-exceptions?-get
          ignore-write-exceptions?-set!
          ignore-write-exceptions?-update!
          is-listening?
          is-supported?
          prefixes
          realm-get
          realm-set!
          realm-update!
          unsafe-connection-ntlm-authentication?-get
          unsafe-connection-ntlm-authentication?-set!
          unsafe-connection-ntlm-authentication?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.HttpListener a ...)))))
  (define (is? a) (clr-is System.Net.HttpListener a))
  (define (http-listener? a) (clr-is System.Net.HttpListener a))
  (define-method-port
    end-get-context
    System.Net.HttpListener
    EndGetContext
    (System.Net.HttpListenerContext System.IAsyncResult))
  (define-method-port
    begin-get-context
    System.Net.HttpListener
    BeginGetContext
    (System.IAsyncResult System.AsyncCallback System.Object))
  (define-method-port
    get-context
    System.Net.HttpListener
    GetContext
    (System.Net.HttpListenerContext))
  (define-method-port stop System.Net.HttpListener Stop (System.Void))
  (define-method-port start System.Net.HttpListener Start (System.Void))
  (define-method-port abort System.Net.HttpListener Abort (System.Void))
  (define-method-port close System.Net.HttpListener Close (System.Void))
  (define-field-port
    authentication-schemes-get
    authentication-schemes-set!
    authentication-schemes-update!
    (property:)
    System.Net.HttpListener
    AuthenticationSchemes
    System.Net.AuthenticationSchemes)
  (define-field-port
    authentication-scheme-selector-delegate-get
    authentication-scheme-selector-delegate-set!
    authentication-scheme-selector-delegate-update!
    (property:)
    System.Net.HttpListener
    AuthenticationSchemeSelectorDelegate
    System.Net.AuthenticationSchemeSelector)
  (define-field-port
    ignore-write-exceptions?-get
    ignore-write-exceptions?-set!
    ignore-write-exceptions?-update!
    (property:)
    System.Net.HttpListener
    IgnoreWriteExceptions
    System.Boolean)
  (define-field-port
    is-listening?
    #f
    #f
    (property:)
    System.Net.HttpListener
    IsListening
    System.Boolean)
  (define-field-port
    is-supported?
    #f
    #f
    (static: property:)
    System.Net.HttpListener
    IsSupported
    System.Boolean)
  (define-field-port
    prefixes
    #f
    #f
    (property:)
    System.Net.HttpListener
    Prefixes
    System.Net.HttpListenerPrefixCollection)
  (define-field-port
    realm-get
    realm-set!
    realm-update!
    (property:)
    System.Net.HttpListener
    Realm
    System.String)
  (define-field-port
    unsafe-connection-ntlm-authentication?-get
    unsafe-connection-ntlm-authentication?-set!
    unsafe-connection-ntlm-authentication?-update!
    (property:)
    System.Net.HttpListener
    UnsafeConnectionNtlmAuthentication
    System.Boolean))
