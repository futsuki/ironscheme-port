(library (system diagnostics monitoring-description-attribute)
  (export new is? monitoring-description-attribute? description)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.MonitoringDescriptionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.MonitoringDescriptionAttribute a))
  (define (monitoring-description-attribute? a)
    (clr-is System.Diagnostics.MonitoringDescriptionAttribute a))
  (define-field-port
    description
    #f
    #f
    (property:)
    System.Diagnostics.MonitoringDescriptionAttribute
    Description
    System.String))
