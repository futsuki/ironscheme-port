(library (system diagnostics code-analysis suppress-message-attribute)
  (export new
          is?
          suppress-message-attribute?
          category
          check-id
          justification-get
          justification-set!
          justification-update!
          message-id-get
          message-id-set!
          message-id-update!
          scope-get
          scope-set!
          scope-update!
          target-get
          target-set!
          target-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.CodeAnalysis.SuppressMessageAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.CodeAnalysis.SuppressMessageAttribute a))
  (define (suppress-message-attribute? a)
    (clr-is System.Diagnostics.CodeAnalysis.SuppressMessageAttribute a))
  (define-field-port
    category
    #f
    #f
    (property:)
    System.Diagnostics.CodeAnalysis.SuppressMessageAttribute
    Category
    System.String)
  (define-field-port
    check-id
    #f
    #f
    (property:)
    System.Diagnostics.CodeAnalysis.SuppressMessageAttribute
    CheckId
    System.String)
  (define-field-port
    justification-get
    justification-set!
    justification-update!
    (property:)
    System.Diagnostics.CodeAnalysis.SuppressMessageAttribute
    Justification
    System.String)
  (define-field-port
    message-id-get
    message-id-set!
    message-id-update!
    (property:)
    System.Diagnostics.CodeAnalysis.SuppressMessageAttribute
    MessageId
    System.String)
  (define-field-port
    scope-get
    scope-set!
    scope-update!
    (property:)
    System.Diagnostics.CodeAnalysis.SuppressMessageAttribute
    Scope
    System.String)
  (define-field-port
    target-get
    target-set!
    target-update!
    (property:)
    System.Diagnostics.CodeAnalysis.SuppressMessageAttribute
    Target
    System.String))
