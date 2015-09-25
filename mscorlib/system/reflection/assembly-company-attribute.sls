(library (system reflection assembly-company-attribute)
  (export new is? assembly-company-attribute? company)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.AssemblyCompanyAttribute
             a
             ...)))))
  (define (is? a) (clr-is System.Reflection.AssemblyCompanyAttribute a))
  (define (assembly-company-attribute? a)
    (clr-is System.Reflection.AssemblyCompanyAttribute a))
  (define-field-port
    company
    #f
    #f
    (property:)
    System.Reflection.AssemblyCompanyAttribute
    Company
    System.String))
