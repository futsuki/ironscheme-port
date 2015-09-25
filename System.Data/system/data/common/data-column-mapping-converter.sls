(library (system data common data-column-mapping-converter)
  (export new
          is?
          data-column-mapping-converter?
          convert-to
          can-convert-to?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.Common.DataColumnMappingConverter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Data.Common.DataColumnMappingConverter a))
  (define (data-column-mapping-converter? a)
    (clr-is System.Data.Common.DataColumnMappingConverter a))
  (define-method-port
    convert-to
    System.Data.Common.DataColumnMappingConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-to?
    System.Data.Common.DataColumnMappingConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type)))
