(library (system security principal identity-not-mapped-exception)
  (export new
          is?
          identity-not-mapped-exception?
          get-object-data
          unmapped-identities)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Principal.IdentityNotMappedException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Principal.IdentityNotMappedException a))
  (define (identity-not-mapped-exception? a)
    (clr-is System.Security.Principal.IdentityNotMappedException a))
  (define-method-port
    get-object-data
    System.Security.Principal.IdentityNotMappedException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    unmapped-identities
    #f
    #f
    (property:)
    System.Security.Principal.IdentityNotMappedException
    UnmappedIdentities
    System.Security.Principal.IdentityReferenceCollection))
