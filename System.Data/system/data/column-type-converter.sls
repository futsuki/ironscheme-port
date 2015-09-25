(library (system data column-type-converter)
  (export new is? column-type-converter? convert-to can-convert-to?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.ColumnTypeConverter a ...)))))
  (define (is? a) (clr-is System.Data.ColumnTypeConverter a))
  (define (column-type-converter? a)
    (clr-is System.Data.ColumnTypeConverter a))
  (define-method-port
    convert-to
    System.Data.ColumnTypeConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-to?
    System.Data.ColumnTypeConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type)))
