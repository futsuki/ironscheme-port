(library (system data constraint-converter)
  (export new is? constraint-converter? convert-to can-convert-to?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.ConstraintConverter a ...)))))
  (define (is? a) (clr-is System.Data.ConstraintConverter a))
  (define (constraint-converter? a)
    (clr-is System.Data.ConstraintConverter a))
  (define-method-port
    convert-to
    System.Data.ConstraintConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-to?
    System.Data.ConstraintConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type)))
