(library (system configuration setting-changing-event-args)
  (export new
          is?
          setting-changing-event-args?
          setting-name
          setting-class
          setting-key
          new-value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.SettingChangingEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.SettingChangingEventArgs a))
  (define (setting-changing-event-args? a)
    (clr-is System.Configuration.SettingChangingEventArgs a))
  (define-field-port
    setting-name
    #f
    #f
    (property:)
    System.Configuration.SettingChangingEventArgs
    SettingName
    System.String)
  (define-field-port
    setting-class
    #f
    #f
    (property:)
    System.Configuration.SettingChangingEventArgs
    SettingClass
    System.String)
  (define-field-port
    setting-key
    #f
    #f
    (property:)
    System.Configuration.SettingChangingEventArgs
    SettingKey
    System.String)
  (define-field-port
    new-value
    #f
    #f
    (property:)
    System.Configuration.SettingChangingEventArgs
    NewValue
    System.Object))
