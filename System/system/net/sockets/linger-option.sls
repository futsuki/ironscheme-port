(library (system net sockets linger-option)
  (export new
          is?
          linger-option?
          enabled?-get
          enabled?-set!
          enabled?-update!
          linger-time-get
          linger-time-set!
          linger-time-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.Sockets.LingerOption a ...)))))
  (define (is? a) (clr-is System.Net.Sockets.LingerOption a))
  (define (linger-option? a) (clr-is System.Net.Sockets.LingerOption a))
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    (property:)
    System.Net.Sockets.LingerOption
    Enabled
    System.Boolean)
  (define-field-port
    linger-time-get
    linger-time-set!
    linger-time-update!
    (property:)
    System.Net.Sockets.LingerOption
    LingerTime
    System.Int32))
