(library (system xml serialization hook)
  (export new
          is?
          hook?
          get-code
          hook-type-get
          hook-type-set!
          hook-type-update!
          select-get
          select-set!
          select-update!
          insert-before-get
          insert-before-set!
          insert-before-update!
          insert-after-get
          insert-after-set!
          insert-after-update!
          replace-get
          replace-set!
          replace-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.Serialization.Hook a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.Hook a))
  (define (hook? a) (clr-is System.Xml.Serialization.Hook a))
  (define-method-port
    get-code
    System.Xml.Serialization.Hook
    GetCode
    (System.String System.Xml.Serialization.HookAction))
  (define-field-port
    hook-type-get
    hook-type-set!
    hook-type-update!
    ()
    System.Xml.Serialization.Hook
    HookType
    System.Xml.Serialization.HookType)
  (define-field-port
    select-get
    select-set!
    select-update!
    ()
    System.Xml.Serialization.Hook
    Select
    System.Xml.Serialization.Select)
  (define-field-port
    insert-before-get
    insert-before-set!
    insert-before-update!
    ()
    System.Xml.Serialization.Hook
    InsertBefore
    System.String)
  (define-field-port
    insert-after-get
    insert-after-set!
    insert-after-update!
    ()
    System.Xml.Serialization.Hook
    InsertAfter
    System.String)
  (define-field-port
    replace-get
    replace-set!
    replace-update!
    ()
    System.Xml.Serialization.Hook
    Replace
    System.String))
