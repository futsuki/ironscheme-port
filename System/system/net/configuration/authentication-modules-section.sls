(library (system net configuration authentication-modules-section)
  (export new
          is?
          authentication-modules-section?
          authentication-modules)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.AuthenticationModulesSection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.AuthenticationModulesSection a))
  (define (authentication-modules-section? a)
    (clr-is System.Net.Configuration.AuthenticationModulesSection a))
  (define-field-port
    authentication-modules
    #f
    #f
    (property:)
    System.Net.Configuration.AuthenticationModulesSection
    AuthenticationModules
    System.Net.Configuration.AuthenticationModuleElementCollection))
