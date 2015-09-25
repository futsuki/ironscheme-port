(library (system configuration configuration-converter-base)
  (export is?
          configuration-converter-base?
          can-convert-to?
          can-convert-from?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Configuration.ConfigurationConverterBase a))
  (define (configuration-converter-base? a)
    (clr-is System.Configuration.ConfigurationConverterBase a))
  (define-method-port
    can-convert-to?
    System.Configuration.ConfigurationConverterBase
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    can-convert-from?
    System.Configuration.ConfigurationConverterBase
    CanConvertFrom
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type)))
