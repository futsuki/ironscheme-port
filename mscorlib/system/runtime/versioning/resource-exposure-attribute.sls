(library (system runtime versioning resource-exposure-attribute)
  (export new is? resource-exposure-attribute? resource-exposure-level)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Versioning.ResourceExposureAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Versioning.ResourceExposureAttribute a))
  (define (resource-exposure-attribute? a)
    (clr-is System.Runtime.Versioning.ResourceExposureAttribute a))
  (define-field-port
    resource-exposure-level
    #f
    #f
    (property:)
    System.Runtime.Versioning.ResourceExposureAttribute
    ResourceExposureLevel
    System.Runtime.Versioning.ResourceScope))
