(library (system globalization daylight-time)
  (export new is? daylight-time? start end delta)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Globalization.DaylightTime a ...)))))
  (define (is? a) (clr-is System.Globalization.DaylightTime a))
  (define (daylight-time? a)
    (clr-is System.Globalization.DaylightTime a))
  (define-field-port
    start
    #f
    #f
    (property:)
    System.Globalization.DaylightTime
    Start
    System.DateTime)
  (define-field-port
    end
    #f
    #f
    (property:)
    System.Globalization.DaylightTime
    End
    System.DateTime)
  (define-field-port
    delta
    #f
    #f
    (property:)
    System.Globalization.DaylightTime
    Delta
    System.TimeSpan))
