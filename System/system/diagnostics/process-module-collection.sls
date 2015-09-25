(library (system diagnostics process-module-collection)
  (export new
          is?
          process-module-collection?
          index-of
          contains?
          copy-to
          item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.ProcessModuleCollection
             a
             ...)))))
  (define (is? a) (clr-is System.Diagnostics.ProcessModuleCollection a))
  (define (process-module-collection? a)
    (clr-is System.Diagnostics.ProcessModuleCollection a))
  (define-method-port
    index-of
    System.Diagnostics.ProcessModuleCollection
    IndexOf
    (System.Int32 System.Diagnostics.ProcessModule))
  (define-method-port
    contains?
    System.Diagnostics.ProcessModuleCollection
    Contains
    (System.Boolean System.Diagnostics.ProcessModule))
  (define-method-port
    copy-to
    System.Diagnostics.ProcessModuleCollection
    CopyTo
    (System.Void System.Diagnostics.ProcessModule[] System.Int32))
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Diagnostics.ProcessModuleCollection
    Item
    System.Diagnostics.ProcessModule))
