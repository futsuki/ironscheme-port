(library (system xml xml-name-entry-cache)
  (export new
          is?
          xml-name-entry-cache?
          get
          add
          get-atomized-prefixed-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XmlNameEntryCache a ...)))))
  (define (is? a) (clr-is System.Xml.XmlNameEntryCache a))
  (define (xml-name-entry-cache? a)
    (clr-is System.Xml.XmlNameEntryCache a))
  (define-method-port
    get
    System.Xml.XmlNameEntryCache
    Get
    (System.Xml.XmlNameEntry
      System.String
      System.String
      System.String
      System.Boolean))
  (define-method-port
    add
    System.Xml.XmlNameEntryCache
    Add
    (System.Xml.XmlNameEntry
      System.String
      System.String
      System.String
      System.Boolean))
  (define-method-port
    get-atomized-prefixed-name
    System.Xml.XmlNameEntryCache
    GetAtomizedPrefixedName
    (System.String System.String System.String)))
