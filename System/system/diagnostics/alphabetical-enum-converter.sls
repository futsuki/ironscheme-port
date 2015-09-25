(library (system diagnostics alphabetical-enum-converter)
  (export new is? alphabetical-enum-converter? get-standard-values)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.AlphabeticalEnumConverter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.AlphabeticalEnumConverter a))
  (define (alphabetical-enum-converter? a)
    (clr-is System.Diagnostics.AlphabeticalEnumConverter a))
  (define-method-port
    get-standard-values
    System.Diagnostics.AlphabeticalEnumConverter
    GetStandardValues
    (System.ComponentModel.TypeConverter+StandardValuesCollection
      System.ComponentModel.ITypeDescriptorContext)))
