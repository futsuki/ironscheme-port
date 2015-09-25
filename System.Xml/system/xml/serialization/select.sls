(library (system xml serialization select)
  (export new
          is?
          select?
          type-name-get
          type-name-set!
          type-name-update!
          type-attributes-get
          type-attributes-set!
          type-attributes-update!
          type-member-get
          type-member-set!
          type-member-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.Serialization.Select a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.Select a))
  (define (select? a) (clr-is System.Xml.Serialization.Select a))
  (define-field-port
    type-name-get
    type-name-set!
    type-name-update!
    ()
    System.Xml.Serialization.Select
    TypeName
    System.String)
  (define-field-port
    type-attributes-get
    type-attributes-set!
    type-attributes-update!
    ()
    System.Xml.Serialization.Select
    TypeAttributes
    System.String[])
  (define-field-port
    type-member-get
    type-member-set!
    type-member-update!
    ()
    System.Xml.Serialization.Select
    TypeMember
    System.String))
