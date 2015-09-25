(library (system resources missing-satellite-assembly-exception)
  (export new is? missing-satellite-assembly-exception? culture-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Resources.MissingSatelliteAssemblyException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Resources.MissingSatelliteAssemblyException a))
  (define (missing-satellite-assembly-exception? a)
    (clr-is System.Resources.MissingSatelliteAssemblyException a))
  (define-field-port
    culture-name
    #f
    #f
    (property:)
    System.Resources.MissingSatelliteAssemblyException
    CultureName
    System.String))
