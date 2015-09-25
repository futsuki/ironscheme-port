(library (system data odbc odbc-parameter-converter)
  (export new is? odbc-parameter-converter? convert-to can-convert-to?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.Odbc.OdbcParameterConverter a ...)))))
  (define (is? a) (clr-is System.Data.Odbc.OdbcParameterConverter a))
  (define (odbc-parameter-converter? a)
    (clr-is System.Data.Odbc.OdbcParameterConverter a))
  (define-method-port
    convert-to
    System.Data.Odbc.OdbcParameterConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-to?
    System.Data.Odbc.OdbcParameterConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type)))
