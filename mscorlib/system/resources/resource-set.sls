(library (system resources resource-set)
  (export new
          is?
          resource-set?
          dispose
          get-object
          get-string
          get-enumerator
          get-default-writer
          get-default-reader
          close)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Resources.ResourceSet a ...)))))
  (define (is? a) (clr-is System.Resources.ResourceSet a))
  (define (resource-set? a) (clr-is System.Resources.ResourceSet a))
  (define-method-port
    dispose
    System.Resources.ResourceSet
    Dispose
    (System.Void))
  (define-method-port
    get-object
    System.Resources.ResourceSet
    GetObject
    (System.Object System.String System.Boolean)
    (System.Object System.String))
  (define-method-port
    get-string
    System.Resources.ResourceSet
    GetString
    (System.String System.String System.Boolean)
    (System.String System.String))
  (define-method-port
    get-enumerator
    System.Resources.ResourceSet
    GetEnumerator
    (System.Collections.IDictionaryEnumerator))
  (define-method-port
    get-default-writer
    System.Resources.ResourceSet
    GetDefaultWriter
    (System.Type))
  (define-method-port
    get-default-reader
    System.Resources.ResourceSet
    GetDefaultReader
    (System.Type))
  (define-method-port
    close
    System.Resources.ResourceSet
    Close
    (System.Void)))
