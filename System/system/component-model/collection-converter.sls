(library (system component-model collection-converter)
  (export new
          is?
          collection-converter?
          get-properties
          convert-to
          get-properties-supported?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.CollectionConverter a ...)))))
  (define (is? a) (clr-is System.ComponentModel.CollectionConverter a))
  (define (collection-converter? a)
    (clr-is System.ComponentModel.CollectionConverter a))
  (define-method-port
    get-properties
    System.ComponentModel.CollectionConverter
    GetProperties
    (System.ComponentModel.PropertyDescriptorCollection
      System.ComponentModel.ITypeDescriptorContext
      System.Object
      System.Attribute[]))
  (define-method-port
    convert-to
    System.ComponentModel.CollectionConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    get-properties-supported?
    System.ComponentModel.CollectionConverter
    GetPropertiesSupported
    (System.Boolean System.ComponentModel.ITypeDescriptorContext)))
