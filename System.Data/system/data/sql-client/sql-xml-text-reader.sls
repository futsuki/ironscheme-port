(library (system data sql-client sql-xml-text-reader)
  (export is?
          sql-xml-text-reader?
          read
          read-line
          read-to-end
          read-block
          peek
          close)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.SqlClient.SqlXmlTextReader a))
  (define (sql-xml-text-reader? a)
    (clr-is System.Data.SqlClient.SqlXmlTextReader a))
  (define-method-port
    read
    System.Data.SqlClient.SqlXmlTextReader
    Read
    (System.Int32 System.Char[] System.Int32 System.Int32)
    (System.Int32))
  (define-method-port
    read-line
    System.Data.SqlClient.SqlXmlTextReader
    ReadLine
    (System.String))
  (define-method-port
    read-to-end
    System.Data.SqlClient.SqlXmlTextReader
    ReadToEnd
    (System.String))
  (define-method-port
    read-block
    System.Data.SqlClient.SqlXmlTextReader
    ReadBlock
    (System.Int32 System.Char[] System.Int32 System.Int32))
  (define-method-port
    peek
    System.Data.SqlClient.SqlXmlTextReader
    Peek
    (System.Int32))
  (define-method-port
    close
    System.Data.SqlClient.SqlXmlTextReader
    Close
    (System.Void)))
