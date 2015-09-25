(library (system data common data-table-mapping-converter)
  (export new
          is?
          data-table-mapping-converter?
          convert-to
          can-convert-to?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.Common.DataTableMappingConverter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Data.Common.DataTableMappingConverter a))
  (define (data-table-mapping-converter? a)
    (clr-is System.Data.Common.DataTableMappingConverter a))
  (define-method-port
    convert-to
    System.Data.Common.DataTableMappingConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-to?
    System.Data.Common.DataTableMappingConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type)))
