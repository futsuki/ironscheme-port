(library (system xml xml-name-table)
  (export is? xml-name-table? get add)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XmlNameTable a))
  (define (xml-name-table? a) (clr-is System.Xml.XmlNameTable a))
  (define-method-port
    get
    System.Xml.XmlNameTable
    Get
    (System.String System.Char[] System.Int32 System.Int32)
    (System.String System.String))
  (define-method-port
    add
    System.Xml.XmlNameTable
    Add
    (System.String System.Char[] System.Int32 System.Int32)
    (System.String System.String)))
