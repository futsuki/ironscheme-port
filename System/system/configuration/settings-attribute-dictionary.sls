(library (system configuration settings-attribute-dictionary)
  (export new is? settings-attribute-dictionary?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.SettingsAttributeDictionary
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.SettingsAttributeDictionary a))
  (define (settings-attribute-dictionary? a)
    (clr-is System.Configuration.SettingsAttributeDictionary a)))
