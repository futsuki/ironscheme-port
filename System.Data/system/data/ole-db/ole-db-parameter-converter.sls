(library (system data ole-db ole-db-parameter-converter)
  (export new
          is?
          ole-db-parameter-converter?
          convert-to
          can-convert-to?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.OleDb.OleDbParameterConverter a ...)))))
  (define (is? a) (clr-is System.Data.OleDb.OleDbParameterConverter a))
  (define (ole-db-parameter-converter? a)
    (clr-is System.Data.OleDb.OleDbParameterConverter a))
  (define-method-port
    convert-to
    System.Data.OleDb.OleDbParameterConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-to?
    System.Data.OleDb.OleDbParameterConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type)))
