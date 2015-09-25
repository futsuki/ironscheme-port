(library (system configuration setting-value-element)
  (export new
          is?
          setting-value-element?
          get-hash-code
          equals?
          value-xml-get
          value-xml-set!
          value-xml-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.SettingValueElement a ...)))))
  (define (is? a) (clr-is System.Configuration.SettingValueElement a))
  (define (setting-value-element? a)
    (clr-is System.Configuration.SettingValueElement a))
  (define-method-port
    get-hash-code
    System.Configuration.SettingValueElement
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.Configuration.SettingValueElement
    Equals
    (System.Boolean System.Object))
  (define-field-port
    value-xml-get
    value-xml-set!
    value-xml-update!
    (property:)
    System.Configuration.SettingValueElement
    ValueXml
    System.Xml.XmlNode))
