(library (system security principal identity-reference-collection)
  (export new
          is?
          identity-reference-collection?
          copy-to
          translate
          get-enumerator
          add
          contains?
          remove?
          clear
          count
          is-read-only?
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Principal.IdentityReferenceCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Principal.IdentityReferenceCollection a))
  (define (identity-reference-collection? a)
    (clr-is System.Security.Principal.IdentityReferenceCollection a))
  (define-method-port
    copy-to
    System.Security.Principal.IdentityReferenceCollection
    CopyTo
    (System.Void
      System.Security.Principal.IdentityReference[]
      System.Int32))
  (define-method-port
    translate
    System.Security.Principal.IdentityReferenceCollection
    Translate
    (System.Security.Principal.IdentityReferenceCollection
      System.Type
      System.Boolean)
    (System.Security.Principal.IdentityReferenceCollection System.Type))
  (define-method-port
    get-enumerator
    System.Security.Principal.IdentityReferenceCollection
    GetEnumerator
    ("System.Collections.Generic.IEnumerator`1[[System.Security.Principal.IdentityReference, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
  (define-method-port
    add
    System.Security.Principal.IdentityReferenceCollection
    Add
    (System.Void System.Security.Principal.IdentityReference))
  (define-method-port
    contains?
    System.Security.Principal.IdentityReferenceCollection
    Contains
    (System.Boolean System.Security.Principal.IdentityReference))
  (define-method-port
    remove?
    System.Security.Principal.IdentityReferenceCollection
    Remove
    (System.Boolean System.Security.Principal.IdentityReference))
  (define-method-port
    clear
    System.Security.Principal.IdentityReferenceCollection
    Clear
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Security.Principal.IdentityReferenceCollection
    Count
    System.Int32)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Security.Principal.IdentityReferenceCollection
    IsReadOnly
    System.Boolean)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Security.Principal.IdentityReferenceCollection
    Item
    System.Security.Principal.IdentityReference))
