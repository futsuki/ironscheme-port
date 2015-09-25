(library (system
          configuration
          comma-delimited-string-collection-converter)
  (export new
          is?
          comma-delimited-string-collection-converter?
          convert-to
          convert-from)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.CommaDelimitedStringCollectionConverter
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Configuration.CommaDelimitedStringCollectionConverter
      a))
  (define (comma-delimited-string-collection-converter? a)
    (clr-is
      System.Configuration.CommaDelimitedStringCollectionConverter
      a))
  (define-method-port
    convert-to
    System.Configuration.CommaDelimitedStringCollectionConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    convert-from
    System.Configuration.CommaDelimitedStringCollectionConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)))
