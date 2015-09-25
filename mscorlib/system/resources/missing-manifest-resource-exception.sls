(library (system resources missing-manifest-resource-exception)
  (export new is? missing-manifest-resource-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Resources.MissingManifestResourceException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Resources.MissingManifestResourceException a))
  (define (missing-manifest-resource-exception? a)
    (clr-is System.Resources.MissingManifestResourceException a)))
