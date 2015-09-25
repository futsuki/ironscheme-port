(library (system data default-value-type-converter)
  (export new
          is?
          default-value-type-converter?
          convert-to
          can-convert-to?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.DefaultValueTypeConverter a ...)))))
  (define (is? a) (clr-is System.Data.DefaultValueTypeConverter a))
  (define (default-value-type-converter? a)
    (clr-is System.Data.DefaultValueTypeConverter a))
  (define-method-port
    convert-to
    System.Data.DefaultValueTypeConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-to?
    System.Data.DefaultValueTypeConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type)))
