(library (system timers timer)
  (export new
          is?
          timer?
          begin-init
          stop
          start
          end-init
          close
          auto-reset?-get
          auto-reset?-set!
          auto-reset?-update!
          enabled?-get
          enabled?-set!
          enabled?-update!
          interval-get
          interval-set!
          interval-update!
          site-get
          site-set!
          site-update!
          synchronizing-object-get
          synchronizing-object-set!
          synchronizing-object-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Timers.Timer a ...)))))
  (define (is? a) (clr-is System.Timers.Timer a))
  (define (timer? a) (clr-is System.Timers.Timer a))
  (define-method-port
    begin-init
    System.Timers.Timer
    BeginInit
    (System.Void))
  (define-method-port stop System.Timers.Timer Stop (System.Void))
  (define-method-port start System.Timers.Timer Start (System.Void))
  (define-method-port
    end-init
    System.Timers.Timer
    EndInit
    (System.Void))
  (define-method-port close System.Timers.Timer Close (System.Void))
  (define-field-port
    auto-reset?-get
    auto-reset?-set!
    auto-reset?-update!
    (property:)
    System.Timers.Timer
    AutoReset
    System.Boolean)
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    (property:)
    System.Timers.Timer
    Enabled
    System.Boolean)
  (define-field-port
    interval-get
    interval-set!
    interval-update!
    (property:)
    System.Timers.Timer
    Interval
    System.Double)
  (define-field-port
    site-get
    site-set!
    site-update!
    (property:)
    System.Timers.Timer
    Site
    System.ComponentModel.ISite)
  (define-field-port
    synchronizing-object-get
    synchronizing-object-set!
    synchronizing-object-update!
    (property:)
    System.Timers.Timer
    SynchronizingObject
    System.ComponentModel.ISynchronizeInvoke))
