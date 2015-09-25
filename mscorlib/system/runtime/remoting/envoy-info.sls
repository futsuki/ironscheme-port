(library (system runtime remoting envoy-info)
  (export new
          is?
          envoy-info?
          envoy-sinks-get
          envoy-sinks-set!
          envoy-sinks-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Runtime.Remoting.EnvoyInfo a ...)))))
  (define (is? a) (clr-is System.Runtime.Remoting.EnvoyInfo a))
  (define (envoy-info? a) (clr-is System.Runtime.Remoting.EnvoyInfo a))
  (define-field-port
    envoy-sinks-get
    envoy-sinks-set!
    envoy-sinks-update!
    (property:)
    System.Runtime.Remoting.EnvoyInfo
    EnvoySinks
    System.Runtime.Remoting.Messaging.IMessageSink))
