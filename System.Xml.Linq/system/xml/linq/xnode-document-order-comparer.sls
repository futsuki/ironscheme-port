(library (system xml linq xnode-document-order-comparer)
  (export new is? xnode-document-order-comparer? compare)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Linq.XNodeDocumentOrderComparer
             a
             ...)))))
  (define (is? a) (clr-is System.Xml.Linq.XNodeDocumentOrderComparer a))
  (define (xnode-document-order-comparer? a)
    (clr-is System.Xml.Linq.XNodeDocumentOrderComparer a))
  (define-method-port
    compare
    System.Xml.Linq.XNodeDocumentOrderComparer
    Compare
    (System.Int32 System.Xml.Linq.XNode System.Xml.Linq.XNode)))
