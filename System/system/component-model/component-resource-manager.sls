(library (system component-model component-resource-manager)
  (export new is? component-resource-manager? apply-resources)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.ComponentResourceManager
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.ComponentResourceManager a))
  (define (component-resource-manager? a)
    (clr-is System.ComponentModel.ComponentResourceManager a))
  (define-method-port
    apply-resources
    System.ComponentModel.ComponentResourceManager
    ApplyResources
    (System.Void
      System.Object
      System.String
      System.Globalization.CultureInfo)
    (System.Void System.Object System.String)))
