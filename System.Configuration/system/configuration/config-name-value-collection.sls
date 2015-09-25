(library (system configuration config-name-value-collection)
  (export new
          is?
          config-name-value-collection?
          set
          reset-modified
          is-modified?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ConfigNameValueCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.ConfigNameValueCollection a))
  (define (config-name-value-collection? a)
    (clr-is System.Configuration.ConfigNameValueCollection a))
  (define-method-port
    set
    System.Configuration.ConfigNameValueCollection
    Set
    (System.Void System.String System.String))
  (define-method-port
    reset-modified
    System.Configuration.ConfigNameValueCollection
    ResetModified
    (System.Void))
  (define-field-port
    is-modified?
    #f
    #f
    (property:)
    System.Configuration.ConfigNameValueCollection
    IsModified
    System.Boolean))
