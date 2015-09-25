(library (system component-model char-converter)
  (export new
          is?
          char-converter?
          convert-to
          can-convert-from?
          convert-from)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.CharConverter a ...)))))
  (define (is? a) (clr-is System.ComponentModel.CharConverter a))
  (define (char-converter? a)
    (clr-is System.ComponentModel.CharConverter a))
  (define-method-port
    convert-to
    System.ComponentModel.CharConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-from?
    System.ComponentModel.CharConverter
    CanConvertFrom
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    convert-from
    System.ComponentModel.CharConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)))
