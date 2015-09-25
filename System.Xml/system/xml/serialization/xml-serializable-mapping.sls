(library (system xml serialization xml-serializable-mapping)
  (export is? xml-serializable-mapping?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlSerializableMapping a))
  (define (xml-serializable-mapping? a)
    (clr-is System.Xml.Serialization.XmlSerializableMapping a)))
