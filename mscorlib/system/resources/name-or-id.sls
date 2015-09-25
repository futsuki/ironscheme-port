(library (system resources name-or-id)
  (export new is? name-or-id? to-string is-name? name id)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Resources.NameOrId a ...)))))
  (define (is? a) (clr-is System.Resources.NameOrId a))
  (define (name-or-id? a) (clr-is System.Resources.NameOrId a))
  (define-method-port
    to-string
    System.Resources.NameOrId
    ToString
    (System.String))
  (define-field-port
    is-name?
    #f
    #f
    (property:)
    System.Resources.NameOrId
    IsName
    System.Boolean)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Resources.NameOrId
    Name
    System.String)
  (define-field-port
    id
    #f
    #f
    (property:)
    System.Resources.NameOrId
    Id
    System.Int32))
