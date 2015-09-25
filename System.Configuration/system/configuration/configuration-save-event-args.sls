(library (system configuration configuration-save-event-args)
  (export new
          is?
          configuration-save-event-args?
          stream-path
          start?
          context
          failed?
          exception)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ConfigurationSaveEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.ConfigurationSaveEventArgs a))
  (define (configuration-save-event-args? a)
    (clr-is System.Configuration.ConfigurationSaveEventArgs a))
  (define-field-port
    stream-path
    #f
    #f
    (property:)
    System.Configuration.ConfigurationSaveEventArgs
    StreamPath
    System.String)
  (define-field-port
    start?
    #f
    #f
    (property:)
    System.Configuration.ConfigurationSaveEventArgs
    Start
    System.Boolean)
  (define-field-port
    context
    #f
    #f
    (property:)
    System.Configuration.ConfigurationSaveEventArgs
    Context
    System.Object)
  (define-field-port
    failed?
    #f
    #f
    (property:)
    System.Configuration.ConfigurationSaveEventArgs
    Failed
    System.Boolean)
  (define-field-port
    exception
    #f
    #f
    (property:)
    System.Configuration.ConfigurationSaveEventArgs
    Exception
    System.Exception))
