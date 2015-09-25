(library (system configuration generic-enum-converter)
  (export new is? generic-enum-converter? convert-to convert-from)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.GenericEnumConverter a ...)))))
  (define (is? a) (clr-is System.Configuration.GenericEnumConverter a))
  (define (generic-enum-converter? a)
    (clr-is System.Configuration.GenericEnumConverter a))
  (define-method-port
    convert-to
    System.Configuration.GenericEnumConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    convert-from
    System.Configuration.GenericEnumConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)))
