(library (system xml xml-stream-reader)
  (export new is? xml-stream-reader? read close)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XmlStreamReader a ...)))))
  (define (is? a) (clr-is System.Xml.XmlStreamReader a))
  (define (xml-stream-reader? a) (clr-is System.Xml.XmlStreamReader a))
  (define-method-port
    read
    System.Xml.XmlStreamReader
    Read
    (System.Int32 System.Char[] System.Int32 System.Int32))
  (define-method-port
    close
    System.Xml.XmlStreamReader
    Close
    (System.Void)))
