(library (system component-model string-converter)
  (export new is? string-converter? can-convert-from? convert-from)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.StringConverter a ...)))))
  (define (is? a) (clr-is System.ComponentModel.StringConverter a))
  (define (string-converter? a)
    (clr-is System.ComponentModel.StringConverter a))
  (define-method-port
    can-convert-from?
    System.ComponentModel.StringConverter
    CanConvertFrom
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    convert-from
    System.ComponentModel.StringConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)))
