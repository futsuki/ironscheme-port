(library (system net configuration web-request-modules-section)
  (export new is? web-request-modules-section? web-request-modules)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.WebRequestModulesSection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.WebRequestModulesSection a))
  (define (web-request-modules-section? a)
    (clr-is System.Net.Configuration.WebRequestModulesSection a))
  (define-field-port
    web-request-modules
    #f
    #f
    (property:)
    System.Net.Configuration.WebRequestModulesSection
    WebRequestModules
    System.Net.Configuration.WebRequestModuleElementCollection))
