(library (system xml serialization xml-serialization-reader-interpreter)
  (export new is? xml-serialization-reader-interpreter? read-root)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlSerializationReaderInterpreter
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Xml.Serialization.XmlSerializationReaderInterpreter
      a))
  (define (xml-serialization-reader-interpreter? a)
    (clr-is
      System.Xml.Serialization.XmlSerializationReaderInterpreter
      a))
  (define-method-port
    read-root
    System.Xml.Serialization.XmlSerializationReaderInterpreter
    ReadRoot
    (System.Object)))
