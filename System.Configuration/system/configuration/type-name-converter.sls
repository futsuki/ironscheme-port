(library (system configuration type-name-converter)
  (export new is? type-name-converter? convert-to convert-from)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.TypeNameConverter a ...)))))
  (define (is? a) (clr-is System.Configuration.TypeNameConverter a))
  (define (type-name-converter? a)
    (clr-is System.Configuration.TypeNameConverter a))
  (define-method-port
    convert-to
    System.Configuration.TypeNameConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    convert-from
    System.Configuration.TypeNameConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)))
