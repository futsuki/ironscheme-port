(library (system component-model base-number-converter)
  (export is?
          base-number-converter?
          convert-to
          can-convert-to?
          can-convert-from?
          convert-from)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.ComponentModel.BaseNumberConverter a))
  (define (base-number-converter? a)
    (clr-is System.ComponentModel.BaseNumberConverter a))
  (define-method-port
    convert-to
    System.ComponentModel.BaseNumberConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-to?
    System.ComponentModel.BaseNumberConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    can-convert-from?
    System.ComponentModel.BaseNumberConverter
    CanConvertFrom
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    convert-from
    System.ComponentModel.BaseNumberConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)))
