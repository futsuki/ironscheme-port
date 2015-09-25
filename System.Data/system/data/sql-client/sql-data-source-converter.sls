(library (system data sql-client sql-data-source-converter)
  (export new is? sql-data-source-converter? convert-to can-convert-to?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.SqlClient.SqlDataSourceConverter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Data.SqlClient.SqlDataSourceConverter a))
  (define (sql-data-source-converter? a)
    (clr-is System.Data.SqlClient.SqlDataSourceConverter a))
  (define-method-port
    convert-to
    System.Data.SqlClient.SqlDataSourceConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-to?
    System.Data.SqlClient.SqlDataSourceConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type)))
