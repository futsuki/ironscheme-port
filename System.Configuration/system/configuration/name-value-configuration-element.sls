(library (system configuration name-value-configuration-element)
  (export new
          is?
          name-value-configuration-element?
          name
          value-get
          value-set!
          value-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.NameValueConfigurationElement
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.NameValueConfigurationElement a))
  (define (name-value-configuration-element? a)
    (clr-is System.Configuration.NameValueConfigurationElement a))
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Configuration.NameValueConfigurationElement
    Name
    System.String)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Configuration.NameValueConfigurationElement
    Value
    System.String))
