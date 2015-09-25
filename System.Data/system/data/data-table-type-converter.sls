(library (system data data-table-type-converter)
  (export new is? data-table-type-converter? get-properties-supported?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.DataTableTypeConverter a ...)))))
  (define (is? a) (clr-is System.Data.DataTableTypeConverter a))
  (define (data-table-type-converter? a)
    (clr-is System.Data.DataTableTypeConverter a))
  (define-method-port
    get-properties-supported?
    System.Data.DataTableTypeConverter
    GetPropertiesSupported
    (System.Boolean System.ComponentModel.ITypeDescriptorContext)))
