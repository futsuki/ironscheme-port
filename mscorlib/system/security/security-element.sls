(library (system security security-element)
  (export new
          is?
          security-element?
          search-for-child-by-tag
          attribute
          is-valid-attribute-name?
          search-for-text-of-tag
          is-valid-attribute-value?
          from-string
          add-child
          is-valid-text?
          escape
          is-valid-tag?
          add-attribute
          equal?
          copy
          to-string
          attributes-get
          attributes-set!
          attributes-update!
          children-get
          children-set!
          children-update!
          tag-get
          tag-set!
          tag-update!
          text-get
          text-set!
          text-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Security.SecurityElement a ...)))))
  (define (is? a) (clr-is System.Security.SecurityElement a))
  (define (security-element? a)
    (clr-is System.Security.SecurityElement a))
  (define-method-port
    search-for-child-by-tag
    System.Security.SecurityElement
    SearchForChildByTag
    (System.Security.SecurityElement System.String))
  (define-method-port
    attribute
    System.Security.SecurityElement
    Attribute
    (System.String System.String))
  (define-method-port
    is-valid-attribute-name?
    System.Security.SecurityElement
    IsValidAttributeName
    (static: System.Boolean System.String))
  (define-method-port
    search-for-text-of-tag
    System.Security.SecurityElement
    SearchForTextOfTag
    (System.String System.String))
  (define-method-port
    is-valid-attribute-value?
    System.Security.SecurityElement
    IsValidAttributeValue
    (static: System.Boolean System.String))
  (define-method-port
    from-string
    System.Security.SecurityElement
    FromString
    (static: System.Security.SecurityElement System.String))
  (define-method-port
    add-child
    System.Security.SecurityElement
    AddChild
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-valid-text?
    System.Security.SecurityElement
    IsValidText
    (static: System.Boolean System.String))
  (define-method-port
    escape
    System.Security.SecurityElement
    Escape
    (static: System.String System.String))
  (define-method-port
    is-valid-tag?
    System.Security.SecurityElement
    IsValidTag
    (static: System.Boolean System.String))
  (define-method-port
    add-attribute
    System.Security.SecurityElement
    AddAttribute
    (System.Void System.String System.String))
  (define-method-port
    equal?
    System.Security.SecurityElement
    Equal
    (System.Boolean System.Security.SecurityElement))
  (define-method-port
    copy
    System.Security.SecurityElement
    Copy
    (System.Security.SecurityElement))
  (define-method-port
    to-string
    System.Security.SecurityElement
    ToString
    (System.String))
  (define-field-port
    attributes-get
    attributes-set!
    attributes-update!
    (property:)
    System.Security.SecurityElement
    Attributes
    System.Collections.Hashtable)
  (define-field-port
    children-get
    children-set!
    children-update!
    (property:)
    System.Security.SecurityElement
    Children
    System.Collections.ArrayList)
  (define-field-port
    tag-get
    tag-set!
    tag-update!
    (property:)
    System.Security.SecurityElement
    Tag
    System.String)
  (define-field-port
    text-get
    text-set!
    text-update!
    (property:)
    System.Security.SecurityElement
    Text
    System.String))
