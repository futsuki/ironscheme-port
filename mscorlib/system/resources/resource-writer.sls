(library (system resources resource-writer)
  (export new
          is?
          resource-writer?
          dispose
          add-resource
          add-resource-data
          generate
          close)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Resources.ResourceWriter a ...)))))
  (define (is? a) (clr-is System.Resources.ResourceWriter a))
  (define (resource-writer? a)
    (clr-is System.Resources.ResourceWriter a))
  (define-method-port
    dispose
    System.Resources.ResourceWriter
    Dispose
    (System.Void))
  (define-method-port
    add-resource
    System.Resources.ResourceWriter
    AddResource
    (System.Void System.String System.String)
    (System.Void System.String System.Object)
    (System.Void System.String System.Byte[]))
  (define-method-port
    add-resource-data
    System.Resources.ResourceWriter
    AddResourceData
    (System.Void System.String System.String System.Byte[]))
  (define-method-port
    generate
    System.Resources.ResourceWriter
    Generate
    (System.Void))
  (define-method-port
    close
    System.Resources.ResourceWriter
    Close
    (System.Void)))
