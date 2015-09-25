(library (system component-model expandable-object-converter)
  (export new
          is?
          expandable-object-converter?
          get-properties
          get-properties-supported?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.ExpandableObjectConverter
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.ExpandableObjectConverter a))
  (define (expandable-object-converter? a)
    (clr-is System.ComponentModel.ExpandableObjectConverter a))
  (define-method-port
    get-properties
    System.ComponentModel.ExpandableObjectConverter
    GetProperties
    (System.ComponentModel.PropertyDescriptorCollection
      System.ComponentModel.ITypeDescriptorContext
      System.Object
      System.Attribute[]))
  (define-method-port
    get-properties-supported?
    System.ComponentModel.ExpandableObjectConverter
    GetPropertiesSupported
    (System.Boolean System.ComponentModel.ITypeDescriptorContext)))
