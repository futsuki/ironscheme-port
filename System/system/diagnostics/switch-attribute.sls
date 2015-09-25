(library (system diagnostics switch-attribute)
  (export new
          is?
          switch-attribute?
          get-all
          switch-name-get
          switch-name-set!
          switch-name-update!
          switch-description-get
          switch-description-set!
          switch-description-update!
          switch-type-get
          switch-type-set!
          switch-type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Diagnostics.SwitchAttribute a ...)))))
  (define (is? a) (clr-is System.Diagnostics.SwitchAttribute a))
  (define (switch-attribute? a)
    (clr-is System.Diagnostics.SwitchAttribute a))
  (define-method-port
    get-all
    System.Diagnostics.SwitchAttribute
    GetAll
    (static:
      System.Diagnostics.SwitchAttribute[]
      System.Reflection.Assembly))
  (define-field-port
    switch-name-get
    switch-name-set!
    switch-name-update!
    (property:)
    System.Diagnostics.SwitchAttribute
    SwitchName
    System.String)
  (define-field-port
    switch-description-get
    switch-description-set!
    switch-description-update!
    (property:)
    System.Diagnostics.SwitchAttribute
    SwitchDescription
    System.String)
  (define-field-port
    switch-type-get
    switch-type-set!
    switch-type-update!
    (property:)
    System.Diagnostics.SwitchAttribute
    SwitchType
    System.Type))
