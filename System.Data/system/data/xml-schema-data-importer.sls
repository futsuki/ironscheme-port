(library (system data xml-schema-data-importer)
  (export new is? xml-schema-data-importer? process)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.XmlSchemaDataImporter a ...)))))
  (define (is? a) (clr-is System.Data.XmlSchemaDataImporter a))
  (define (xml-schema-data-importer? a)
    (clr-is System.Data.XmlSchemaDataImporter a))
  (define-method-port
    process
    System.Data.XmlSchemaDataImporter
    Process
    (System.Void)))
