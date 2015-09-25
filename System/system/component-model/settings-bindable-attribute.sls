(library (system component-model settings-bindable-attribute)
  (export new
          is?
          settings-bindable-attribute?
          get-hash-code
          equals?
          yes
          no
          bindable?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.SettingsBindableAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.SettingsBindableAttribute a))
  (define (settings-bindable-attribute? a)
    (clr-is System.ComponentModel.SettingsBindableAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.SettingsBindableAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.ComponentModel.SettingsBindableAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    yes
    #f
    #f
    (static:)
    System.ComponentModel.SettingsBindableAttribute
    Yes
    System.ComponentModel.SettingsBindableAttribute)
  (define-field-port
    no
    #f
    #f
    (static:)
    System.ComponentModel.SettingsBindableAttribute
    No
    System.ComponentModel.SettingsBindableAttribute)
  (define-field-port
    bindable?
    #f
    #f
    (property:)
    System.ComponentModel.SettingsBindableAttribute
    Bindable
    System.Boolean))
