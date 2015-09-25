(library (system diagnostics switch-level-attribute)
  (export new
          is?
          switch-level-attribute?
          switch-level-type-get
          switch-level-type-set!
          switch-level-type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Diagnostics.SwitchLevelAttribute a ...)))))
  (define (is? a) (clr-is System.Diagnostics.SwitchLevelAttribute a))
  (define (switch-level-attribute? a)
    (clr-is System.Diagnostics.SwitchLevelAttribute a))
  (define-field-port
    switch-level-type-get
    switch-level-type-set!
    switch-level-type-update!
    (property:)
    System.Diagnostics.SwitchLevelAttribute
    SwitchLevelType
    System.Type))
