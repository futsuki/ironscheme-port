(library (system code-dom code-type-member)
  (export new
          is?
          code-type-member?
          attributes-get
          attributes-set!
          attributes-update!
          comments
          custom-attributes-get
          custom-attributes-set!
          custom-attributes-update!
          line-pragma-get
          line-pragma-set!
          line-pragma-update!
          name-get
          name-set!
          name-update!
          end-directives
          start-directives)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.CodeDom.CodeTypeMember a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeTypeMember a))
  (define (code-type-member? a)
    (clr-is System.CodeDom.CodeTypeMember a))
  (define-field-port
    attributes-get
    attributes-set!
    attributes-update!
    (property:)
    System.CodeDom.CodeTypeMember
    Attributes
    System.CodeDom.MemberAttributes)
  (define-field-port
    comments
    #f
    #f
    (property:)
    System.CodeDom.CodeTypeMember
    Comments
    System.CodeDom.CodeCommentStatementCollection)
  (define-field-port
    custom-attributes-get
    custom-attributes-set!
    custom-attributes-update!
    (property:)
    System.CodeDom.CodeTypeMember
    CustomAttributes
    System.CodeDom.CodeAttributeDeclarationCollection)
  (define-field-port
    line-pragma-get
    line-pragma-set!
    line-pragma-update!
    (property:)
    System.CodeDom.CodeTypeMember
    LinePragma
    System.CodeDom.CodeLinePragma)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.CodeDom.CodeTypeMember
    Name
    System.String)
  (define-field-port
    end-directives
    #f
    #f
    (property:)
    System.CodeDom.CodeTypeMember
    EndDirectives
    System.CodeDom.CodeDirectiveCollection)
  (define-field-port
    start-directives
    #f
    #f
    (property:)
    System.CodeDom.CodeTypeMember
    StartDirectives
    System.CodeDom.CodeDirectiveCollection))
