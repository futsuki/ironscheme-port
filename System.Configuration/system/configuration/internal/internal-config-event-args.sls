(library (system configuration internal internal-config-event-args)
  (export new
          is?
          internal-config-event-args?
          config-path-get
          config-path-set!
          config-path-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.Internal.InternalConfigEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.Internal.InternalConfigEventArgs a))
  (define (internal-config-event-args? a)
    (clr-is System.Configuration.Internal.InternalConfigEventArgs a))
  (define-field-port
    config-path-get
    config-path-set!
    config-path-update!
    (property:)
    System.Configuration.Internal.InternalConfigEventArgs
    ConfigPath
    System.String))
