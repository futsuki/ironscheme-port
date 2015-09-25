(library (system xml xml-reader-binary-support)
  (export new
          is?
          xml-reader-binary-support?
          read-content-as-bin-hex
          read-element-content-as-bin-hex
          read-base64
          read-value-chunk
          read-content-as-base64
          reset
          read-bin-hex
          read-element-content-as-base64
          getter-get
          getter-set!
          getter-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XmlReaderBinarySupport a ...)))))
  (define (is? a) (clr-is System.Xml.XmlReaderBinarySupport a))
  (define (xml-reader-binary-support? a)
    (clr-is System.Xml.XmlReaderBinarySupport a))
  (define-method-port
    read-content-as-bin-hex
    System.Xml.XmlReaderBinarySupport
    ReadContentAsBinHex
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    read-element-content-as-bin-hex
    System.Xml.XmlReaderBinarySupport
    ReadElementContentAsBinHex
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    read-base64
    System.Xml.XmlReaderBinarySupport
    ReadBase64
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    read-value-chunk
    System.Xml.XmlReaderBinarySupport
    ReadValueChunk
    (System.Int32 System.Char[] System.Int32 System.Int32))
  (define-method-port
    read-content-as-base64
    System.Xml.XmlReaderBinarySupport
    ReadContentAsBase64
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    reset
    System.Xml.XmlReaderBinarySupport
    Reset
    (System.Void))
  (define-method-port
    read-bin-hex
    System.Xml.XmlReaderBinarySupport
    ReadBinHex
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    read-element-content-as-base64
    System.Xml.XmlReaderBinarySupport
    ReadElementContentAsBase64
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-field-port
    getter-get
    getter-set!
    getter-update!
    (property:)
    System.Xml.XmlReaderBinarySupport
    Getter
    System.Xml.XmlReaderBinarySupport+CharGetter))
