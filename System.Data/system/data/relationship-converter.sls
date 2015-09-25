(library (system data relationship-converter)
  (export new is? relationship-converter? convert-to can-convert-to?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.RelationshipConverter a ...)))))
  (define (is? a) (clr-is System.Data.RelationshipConverter a))
  (define (relationship-converter? a)
    (clr-is System.Data.RelationshipConverter a))
  (define-method-port
    convert-to
    System.Data.RelationshipConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-to?
    System.Data.RelationshipConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type)))
