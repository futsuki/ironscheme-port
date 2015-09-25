(library (system component-model decimal-converter)
  (export new is? decimal-converter? convert-to can-convert-to?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.DecimalConverter a ...)))))
  (define (is? a) (clr-is System.ComponentModel.DecimalConverter a))
  (define (decimal-converter? a)
    (clr-is System.ComponentModel.DecimalConverter a))
  (define-method-port
    convert-to
    System.ComponentModel.DecimalConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-to?
    System.ComponentModel.DecimalConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type)))
