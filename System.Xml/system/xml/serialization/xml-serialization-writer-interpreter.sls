(library (system xml serialization xml-serialization-writer-interpreter)
  (export new is? xml-serialization-writer-interpreter? write-root)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlSerializationWriterInterpreter
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Xml.Serialization.XmlSerializationWriterInterpreter
      a))
  (define (xml-serialization-writer-interpreter? a)
    (clr-is
      System.Xml.Serialization.XmlSerializationWriterInterpreter
      a))
  (define-method-port
    write-root
    System.Xml.Serialization.XmlSerializationWriterInterpreter
    WriteRoot
    (System.Void System.Object)))
