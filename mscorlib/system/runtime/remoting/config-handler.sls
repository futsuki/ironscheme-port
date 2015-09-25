(library (system runtime remoting config-handler)
  (export new
          is?
          config-handler?
          on-chars
          on-start-parsing
          on-end-element
          on-ignorable-whitespace
          on-end-parsing
          parse-element
          on-processing-instruction
          on-start-element)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Runtime.Remoting.ConfigHandler a ...)))))
  (define (is? a) (clr-is System.Runtime.Remoting.ConfigHandler a))
  (define (config-handler? a)
    (clr-is System.Runtime.Remoting.ConfigHandler a))
  (define-method-port
    on-chars
    System.Runtime.Remoting.ConfigHandler
    OnChars
    (System.Void System.String))
  (define-method-port
    on-start-parsing
    System.Runtime.Remoting.ConfigHandler
    OnStartParsing
    (System.Void Mono.Xml.SmallXmlParser))
  (define-method-port
    on-end-element
    System.Runtime.Remoting.ConfigHandler
    OnEndElement
    (System.Void System.String))
  (define-method-port
    on-ignorable-whitespace
    System.Runtime.Remoting.ConfigHandler
    OnIgnorableWhitespace
    (System.Void System.String))
  (define-method-port
    on-end-parsing
    System.Runtime.Remoting.ConfigHandler
    OnEndParsing
    (System.Void Mono.Xml.SmallXmlParser))
  (define-method-port
    parse-element
    System.Runtime.Remoting.ConfigHandler
    ParseElement
    (System.Void System.String Mono.Xml.SmallXmlParser+IAttrList))
  (define-method-port
    on-processing-instruction
    System.Runtime.Remoting.ConfigHandler
    OnProcessingInstruction
    (System.Void System.String System.String))
  (define-method-port
    on-start-element
    System.Runtime.Remoting.ConfigHandler
    OnStartElement
    (System.Void System.String Mono.Xml.SmallXmlParser+IAttrList)))
