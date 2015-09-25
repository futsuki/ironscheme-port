(library (system data sql-client network-library-converter)
  (export new is? network-library-converter? convert-to can-convert-to?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.SqlClient.NetworkLibraryConverter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Data.SqlClient.NetworkLibraryConverter a))
  (define (network-library-converter? a)
    (clr-is System.Data.SqlClient.NetworkLibraryConverter a))
  (define-method-port
    convert-to
    System.Data.SqlClient.NetworkLibraryConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-to?
    System.Data.SqlClient.NetworkLibraryConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type)))
