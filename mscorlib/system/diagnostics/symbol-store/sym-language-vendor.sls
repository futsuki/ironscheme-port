(library (system diagnostics symbol-store sym-language-vendor)
  (export new is? sym-language-vendor? microsoft)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.SymbolStore.SymLanguageVendor
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.SymbolStore.SymLanguageVendor a))
  (define (sym-language-vendor? a)
    (clr-is System.Diagnostics.SymbolStore.SymLanguageVendor a))
  (define-field-port
    microsoft
    #f
    #f
    (static:)
    System.Diagnostics.SymbolStore.SymLanguageVendor
    Microsoft
    System.Guid))
