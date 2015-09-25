(library (system xml xsl no-operation-debugger)
  (export new is? no-operation-debugger?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Xsl.NoOperationDebugger a ...)))))
  (define (is? a) (clr-is System.Xml.Xsl.NoOperationDebugger a))
  (define (no-operation-debugger? a)
    (clr-is System.Xml.Xsl.NoOperationDebugger a)))
