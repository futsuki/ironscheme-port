(library (mono security x509 x509-extension-collection)
  (export new
          is?
          x509-extension-collection?
          insert
          add-range
          get-bytes
          index-of
          add
          contains?
          remove
          copy-to
          item
          item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Security.X509.X509ExtensionCollection
             a
             ...)))))
  (define (is? a) (clr-is Mono.Security.X509.X509ExtensionCollection a))
  (define (x509-extension-collection? a)
    (clr-is Mono.Security.X509.X509ExtensionCollection a))
  (define-method-port
    insert
    Mono.Security.X509.X509ExtensionCollection
    Insert
    (System.Void System.Int32 Mono.Security.X509.X509Extension))
  (define-method-port
    add-range
    Mono.Security.X509.X509ExtensionCollection
    AddRange
    (System.Void Mono.Security.X509.X509ExtensionCollection)
    (System.Void Mono.Security.X509.X509Extension[]))
  (define-method-port
    get-bytes
    Mono.Security.X509.X509ExtensionCollection
    GetBytes
    (System.Byte[]))
  (define-method-port
    index-of
    Mono.Security.X509.X509ExtensionCollection
    IndexOf
    (System.Int32 System.String)
    (System.Int32 Mono.Security.X509.X509Extension))
  (define-method-port
    add
    Mono.Security.X509.X509ExtensionCollection
    Add
    (System.Int32 Mono.Security.X509.X509Extension))
  (define-method-port
    contains?
    Mono.Security.X509.X509ExtensionCollection
    Contains
    (System.Boolean System.String)
    (System.Boolean Mono.Security.X509.X509Extension))
  (define-method-port
    remove
    Mono.Security.X509.X509ExtensionCollection
    Remove
    (System.Void System.String)
    (System.Void Mono.Security.X509.X509Extension))
  (define-method-port
    copy-to
    Mono.Security.X509.X509ExtensionCollection
    CopyTo
    (System.Void Mono.Security.X509.X509Extension[] System.Int32))
  (define-field-port
    item
    #f
    #f
    (property:)
    Mono.Security.X509.X509ExtensionCollection
    Item
    Mono.Security.X509.X509Extension)
  (define-field-port
    item
    #f
    #f
    (property:)
    Mono.Security.X509.X509ExtensionCollection
    Item
    Mono.Security.X509.X509Extension))
