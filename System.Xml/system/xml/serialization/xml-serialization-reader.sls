(library (system xml serialization xml-serialization-reader)
  (export is? xml-serialization-reader?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlSerializationReader a))
  (define (xml-serialization-reader? a)
    (clr-is System.Xml.Serialization.XmlSerializationReader a)))
