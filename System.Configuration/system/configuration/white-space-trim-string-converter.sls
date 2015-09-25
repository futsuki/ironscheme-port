(library (system configuration white-space-trim-string-converter)
  (export new
          is?
          white-space-trim-string-converter?
          convert-to
          convert-from)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.WhiteSpaceTrimStringConverter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.WhiteSpaceTrimStringConverter a))
  (define (white-space-trim-string-converter? a)
    (clr-is System.Configuration.WhiteSpaceTrimStringConverter a))
  (define-method-port
    convert-to
    System.Configuration.WhiteSpaceTrimStringConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    convert-from
    System.Configuration.WhiteSpaceTrimStringConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)))
