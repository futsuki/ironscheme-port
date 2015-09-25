(library (system data sql-client sql-parameter-converter)
  (export new is? sql-parameter-converter? convert-to can-convert-to?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.SqlClient.SqlParameterConverter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Data.SqlClient.SqlParameterConverter a))
  (define (sql-parameter-converter? a)
    (clr-is System.Data.SqlClient.SqlParameterConverter a))
  (define-method-port
    convert-to
    System.Data.SqlClient.SqlParameterConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-to?
    System.Data.SqlClient.SqlParameterConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type)))
