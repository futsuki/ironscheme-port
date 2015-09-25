(library (system configuration key-value-configuration-element)
  (export new
          is?
          key-value-configuration-element?
          key
          value-get
          value-set!
          value-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.KeyValueConfigurationElement
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.KeyValueConfigurationElement a))
  (define (key-value-configuration-element? a)
    (clr-is System.Configuration.KeyValueConfigurationElement a))
  (define-field-port
    key
    #f
    #f
    (property:)
    System.Configuration.KeyValueConfigurationElement
    Key
    System.String)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Configuration.KeyValueConfigurationElement
    Value
    System.String))
