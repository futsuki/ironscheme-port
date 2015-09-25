(library (system xml serialization code-identifiers)
  (export new
          is?
          code-identifiers?
          to-array
          add-reserved
          is-in-use?
          remove-reserved
          add
          remove
          make-right-case
          make-unique
          clear
          add-unique
          use-camel-casing?-get
          use-camel-casing?-set!
          use-camel-casing?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Serialization.CodeIdentifiers a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.CodeIdentifiers a))
  (define (code-identifiers? a)
    (clr-is System.Xml.Serialization.CodeIdentifiers a))
  (define-method-port
    to-array
    System.Xml.Serialization.CodeIdentifiers
    ToArray
    (System.Object System.Type))
  (define-method-port
    add-reserved
    System.Xml.Serialization.CodeIdentifiers
    AddReserved
    (System.Void System.String))
  (define-method-port
    is-in-use?
    System.Xml.Serialization.CodeIdentifiers
    IsInUse
    (System.Boolean System.String))
  (define-method-port
    remove-reserved
    System.Xml.Serialization.CodeIdentifiers
    RemoveReserved
    (System.Void System.String))
  (define-method-port
    add
    System.Xml.Serialization.CodeIdentifiers
    Add
    (System.Void System.String System.Object))
  (define-method-port
    remove
    System.Xml.Serialization.CodeIdentifiers
    Remove
    (System.Void System.String))
  (define-method-port
    make-right-case
    System.Xml.Serialization.CodeIdentifiers
    MakeRightCase
    (System.String System.String))
  (define-method-port
    make-unique
    System.Xml.Serialization.CodeIdentifiers
    MakeUnique
    (System.String System.String))
  (define-method-port
    clear
    System.Xml.Serialization.CodeIdentifiers
    Clear
    (System.Void))
  (define-method-port
    add-unique
    System.Xml.Serialization.CodeIdentifiers
    AddUnique
    (System.String System.String System.Object))
  (define-field-port
    use-camel-casing?-get
    use-camel-casing?-set!
    use-camel-casing?-update!
    (property:)
    System.Xml.Serialization.CodeIdentifiers
    UseCamelCasing
    System.Boolean))
