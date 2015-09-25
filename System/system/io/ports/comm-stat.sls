(library (system io ports comm-stat)
  (export new
          is?
          comm-stat?
          flags-get
          flags-set!
          flags-update!
          bytes-in-get
          bytes-in-set!
          bytes-in-update!
          bytes-out-get
          bytes-out-set!
          bytes-out-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.Ports.CommStat a ...)))))
  (define (is? a) (clr-is System.IO.Ports.CommStat a))
  (define (comm-stat? a) (clr-is System.IO.Ports.CommStat a))
  (define-field-port
    flags-get
    flags-set!
    flags-update!
    ()
    System.IO.Ports.CommStat
    flags
    System.UInt32)
  (define-field-port
    bytes-in-get
    bytes-in-set!
    bytes-in-update!
    ()
    System.IO.Ports.CommStat
    BytesIn
    System.UInt32)
  (define-field-port
    bytes-out-get
    bytes-out-set!
    bytes-out-update!
    ()
    System.IO.Ports.CommStat
    BytesOut
    System.UInt32))
