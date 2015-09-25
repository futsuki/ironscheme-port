(library (system resources resource-reader)
  (export new
          is?
          resource-reader?
          get-resource-data
          get-enumerator
          close)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Resources.ResourceReader a ...)))))
  (define (is? a) (clr-is System.Resources.ResourceReader a))
  (define (resource-reader? a)
    (clr-is System.Resources.ResourceReader a))
  (define-method-port
    get-resource-data
    System.Resources.ResourceReader
    GetResourceData
    (System.Void System.String System.String& System.Byte[]&))
  (define-method-port
    get-enumerator
    System.Resources.ResourceReader
    GetEnumerator
    (System.Collections.IDictionaryEnumerator))
  (define-method-port
    close
    System.Resources.ResourceReader
    Close
    (System.Void)))
