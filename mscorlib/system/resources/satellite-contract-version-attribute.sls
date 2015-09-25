(library (system resources satellite-contract-version-attribute)
  (export new is? satellite-contract-version-attribute? version)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Resources.SatelliteContractVersionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Resources.SatelliteContractVersionAttribute a))
  (define (satellite-contract-version-attribute? a)
    (clr-is System.Resources.SatelliteContractVersionAttribute a))
  (define-field-port
    version
    #f
    #f
    (property:)
    System.Resources.SatelliteContractVersionAttribute
    Version
    System.String))
