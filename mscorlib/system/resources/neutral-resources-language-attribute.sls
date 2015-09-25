(library (system resources neutral-resources-language-attribute)
  (export new
          is?
          neutral-resources-language-attribute?
          culture-name
          location)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Resources.NeutralResourcesLanguageAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Resources.NeutralResourcesLanguageAttribute a))
  (define (neutral-resources-language-attribute? a)
    (clr-is System.Resources.NeutralResourcesLanguageAttribute a))
  (define-field-port
    culture-name
    #f
    #f
    (property:)
    System.Resources.NeutralResourcesLanguageAttribute
    CultureName
    System.String)
  (define-field-port
    location
    #f
    #f
    (property:)
    System.Resources.NeutralResourcesLanguageAttribute
    Location
    System.Resources.UltimateResourceFallbackLocation))
