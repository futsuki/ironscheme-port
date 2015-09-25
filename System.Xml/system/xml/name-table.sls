(library (system xml name-table)
  (export new is? name-table? get add)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.NameTable a ...)))))
  (define (is? a) (clr-is System.Xml.NameTable a))
  (define (name-table? a) (clr-is System.Xml.NameTable a))
  (define-method-port
    get
    System.Xml.NameTable
    Get
    (System.String System.String)
    (System.String System.Char[] System.Int32 System.Int32))
  (define-method-port
    add
    System.Xml.NameTable
    Add
    (System.String System.String)
    (System.String System.Char[] System.Int32 System.Int32)))
