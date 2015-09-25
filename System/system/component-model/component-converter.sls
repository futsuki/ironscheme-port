(library (system component-model component-converter)
  (export new
          is?
          component-converter?
          get-properties
          get-properties-supported?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.ComponentConverter a ...)))))
  (define (is? a) (clr-is System.ComponentModel.ComponentConverter a))
  (define (component-converter? a)
    (clr-is System.ComponentModel.ComponentConverter a))
  (define-method-port
    get-properties
    System.ComponentModel.ComponentConverter
    GetProperties
    (System.ComponentModel.PropertyDescriptorCollection
      System.ComponentModel.ITypeDescriptorContext
      System.Object
      System.Attribute[]))
  (define-method-port
    get-properties-supported?
    System.ComponentModel.ComponentConverter
    GetPropertiesSupported
    (System.Boolean System.ComponentModel.ITypeDescriptorContext)))
