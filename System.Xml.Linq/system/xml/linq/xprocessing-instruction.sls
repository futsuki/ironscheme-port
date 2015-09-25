(library (system xml linq xprocessing-instruction)
  (export new
          is?
          xprocessing-instruction?
          write-to
          data-get
          data-set!
          data-update!
          node-type
          target-get
          target-set!
          target-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Linq.XProcessingInstruction a ...)))))
  (define (is? a) (clr-is System.Xml.Linq.XProcessingInstruction a))
  (define (xprocessing-instruction? a)
    (clr-is System.Xml.Linq.XProcessingInstruction a))
  (define-method-port
    write-to
    System.Xml.Linq.XProcessingInstruction
    WriteTo
    (System.Void System.Xml.XmlWriter))
  (define-field-port
    data-get
    data-set!
    data-update!
    (property:)
    System.Xml.Linq.XProcessingInstruction
    Data
    System.String)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.Linq.XProcessingInstruction
    NodeType
    System.Xml.XmlNodeType)
  (define-field-port
    target-get
    target-set!
    target-update!
    (property:)
    System.Xml.Linq.XProcessingInstruction
    Target
    System.String))
