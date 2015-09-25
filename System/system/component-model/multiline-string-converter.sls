(library (system component-model multiline-string-converter)
  (export new
          is?
          multiline-string-converter?
          get-properties
          convert-to
          get-properties-supported?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.MultilineStringConverter
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.MultilineStringConverter a))
  (define (multiline-string-converter? a)
    (clr-is System.ComponentModel.MultilineStringConverter a))
  (define-method-port
    get-properties
    System.ComponentModel.MultilineStringConverter
    GetProperties
    (System.ComponentModel.PropertyDescriptorCollection
      System.ComponentModel.ITypeDescriptorContext
      System.Object
      System.Attribute[]))
  (define-method-port
    convert-to
    System.ComponentModel.MultilineStringConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    get-properties-supported?
    System.ComponentModel.MultilineStringConverter
    GetPropertiesSupported
    (System.Boolean System.ComponentModel.ITypeDescriptorContext)))
