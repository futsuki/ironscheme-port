(library (system data sql-client sql-initial-catalog-converter)
  (export new
          is?
          sql-initial-catalog-converter?
          convert-to
          can-convert-to?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.SqlClient.SqlInitialCatalogConverter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Data.SqlClient.SqlInitialCatalogConverter a))
  (define (sql-initial-catalog-converter? a)
    (clr-is System.Data.SqlClient.SqlInitialCatalogConverter a))
  (define-method-port
    convert-to
    System.Data.SqlClient.SqlInitialCatalogConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-to?
    System.Data.SqlClient.SqlInitialCatalogConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type)))
