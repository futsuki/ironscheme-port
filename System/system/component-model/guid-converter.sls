(library (system component-model guid-converter)
  (export new
          is?
          guid-converter?
          convert-to
          can-convert-to?
          can-convert-from?
          convert-from)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.GuidConverter a ...)))))
  (define (is? a) (clr-is System.ComponentModel.GuidConverter a))
  (define (guid-converter? a)
    (clr-is System.ComponentModel.GuidConverter a))
  (define-method-port
    convert-to
    System.ComponentModel.GuidConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-to?
    System.ComponentModel.GuidConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    can-convert-from?
    System.ComponentModel.GuidConverter
    CanConvertFrom
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    convert-from
    System.ComponentModel.GuidConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)))
