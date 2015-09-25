(library (system xml schema xml-schema-compilation-settings)
  (export new
          is?
          xml-schema-compilation-settings?
          enable-upa-check?-get
          enable-upa-check?-set!
          enable-upa-check?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Schema.XmlSchemaCompilationSettings
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Schema.XmlSchemaCompilationSettings a))
  (define (xml-schema-compilation-settings? a)
    (clr-is System.Xml.Schema.XmlSchemaCompilationSettings a))
  (define-field-port
    enable-upa-check?-get
    enable-upa-check?-set!
    enable-upa-check?-update!
    (property:)
    System.Xml.Schema.XmlSchemaCompilationSettings
    EnableUpaCheck
    System.Boolean))
