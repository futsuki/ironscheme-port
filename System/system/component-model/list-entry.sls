(library (system component-model list-entry)
  (export new
          is?
          list-entry?
          key-get
          key-set!
          key-update!
          value-get
          value-set!
          value-update!
          next-get
          next-set!
          next-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.ComponentModel.ListEntry a ...)))))
  (define (is? a) (clr-is System.ComponentModel.ListEntry a))
  (define (list-entry? a) (clr-is System.ComponentModel.ListEntry a))
  (define-field-port
    key-get
    key-set!
    key-update!
    ()
    System.ComponentModel.ListEntry
    key
    System.Object)
  (define-field-port
    value-get
    value-set!
    value-update!
    ()
    System.ComponentModel.ListEntry
    value
    System.Delegate)
  (define-field-port
    next-get
    next-set!
    next-update!
    ()
    System.ComponentModel.ListEntry
    next
    System.ComponentModel.ListEntry))
