(library (system diagnostics symbol-store sym-document-type)
  (export new is? sym-document-type? text)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.SymbolStore.SymDocumentType
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.SymbolStore.SymDocumentType a))
  (define (sym-document-type? a)
    (clr-is System.Diagnostics.SymbolStore.SymDocumentType a))
  (define-field-port
    text
    #f
    #f
    (static:)
    System.Diagnostics.SymbolStore.SymDocumentType
    Text
    System.Guid))
