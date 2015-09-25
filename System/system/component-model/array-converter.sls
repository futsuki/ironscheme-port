(library (system component-model array-converter)
  (export new
          is?
          array-converter?
          get-properties
          convert-to
          get-properties-supported?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.ArrayConverter a ...)))))
  (define (is? a) (clr-is System.ComponentModel.ArrayConverter a))
  (define (array-converter? a)
    (clr-is System.ComponentModel.ArrayConverter a))
  (define-method-port
    get-properties
    System.ComponentModel.ArrayConverter
    GetProperties
    (System.ComponentModel.PropertyDescriptorCollection
      System.ComponentModel.ITypeDescriptorContext
      System.Object
      System.Attribute[]))
  (define-method-port
    convert-to
    System.ComponentModel.ArrayConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    get-properties-supported?
    System.ComponentModel.ArrayConverter
    GetPropertiesSupported
    (System.Boolean System.ComponentModel.ITypeDescriptorContext)))
