(library (system xml xml-input-stream)
  (export new
          is?
          xml-input-stream?
          read
          read-byte
          write
          set-length
          seek
          flush
          close
          strict-utf8
          actual-encoding
          can-read?
          can-seek?
          can-write?
          length
          position-get
          position-set!
          position-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XmlInputStream a ...)))))
  (define (is? a) (clr-is System.Xml.XmlInputStream a))
  (define (xml-input-stream? a) (clr-is System.Xml.XmlInputStream a))
  (define-method-port
    read
    System.Xml.XmlInputStream
    Read
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    read-byte
    System.Xml.XmlInputStream
    ReadByte
    (System.Int32))
  (define-method-port
    write
    System.Xml.XmlInputStream
    Write
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    set-length
    System.Xml.XmlInputStream
    SetLength
    (System.Void System.Int64))
  (define-method-port
    seek
    System.Xml.XmlInputStream
    Seek
    (System.Int64 System.Int64 System.IO.SeekOrigin))
  (define-method-port
    flush
    System.Xml.XmlInputStream
    Flush
    (System.Void))
  (define-method-port
    close
    System.Xml.XmlInputStream
    Close
    (System.Void))
  (define-field-port
    strict-utf8
    #f
    #f
    (static:)
    System.Xml.XmlInputStream
    StrictUTF8
    System.Text.Encoding)
  (define-field-port
    actual-encoding
    #f
    #f
    (property:)
    System.Xml.XmlInputStream
    ActualEncoding
    System.Text.Encoding)
  (define-field-port
    can-read?
    #f
    #f
    (property:)
    System.Xml.XmlInputStream
    CanRead
    System.Boolean)
  (define-field-port
    can-seek?
    #f
    #f
    (property:)
    System.Xml.XmlInputStream
    CanSeek
    System.Boolean)
  (define-field-port
    can-write?
    #f
    #f
    (property:)
    System.Xml.XmlInputStream
    CanWrite
    System.Boolean)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.Xml.XmlInputStream
    Length
    System.Int64)
  (define-field-port
    position-get
    position-set!
    position-update!
    (property:)
    System.Xml.XmlInputStream
    Position
    System.Int64))
