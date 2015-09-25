(library (system security named-permission-set)
  (export new
          is?
          named-permission-set?
          get-hash-code
          from-xml
          to-xml
          copy
          equals?
          description-get
          description-set!
          description-update!
          name-get
          name-set!
          name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.NamedPermissionSet a ...)))))
  (define (is? a) (clr-is System.Security.NamedPermissionSet a))
  (define (named-permission-set? a)
    (clr-is System.Security.NamedPermissionSet a))
  (define-method-port
    get-hash-code
    System.Security.NamedPermissionSet
    GetHashCode
    (System.Int32))
  (define-method-port
    from-xml
    System.Security.NamedPermissionSet
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    to-xml
    System.Security.NamedPermissionSet
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    copy
    System.Security.NamedPermissionSet
    Copy
    (System.Security.NamedPermissionSet System.String)
    (System.Security.PermissionSet))
  (define-method-port
    equals?
    System.Security.NamedPermissionSet
    Equals
    (System.Boolean System.Object))
  (define-field-port
    description-get
    description-set!
    description-update!
    (property:)
    System.Security.NamedPermissionSet
    Description
    System.String)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Security.NamedPermissionSet
    Name
    System.String))
