(library (system globalization ccfixed)
  (export new
          is?
          ccfixed?
          kd-nearest
          to-date-time
          kday-on-or-after
          kday-before
          from-date-time
          day-of-week
          kday-after
          kday-on-or-before)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Globalization.CCFixed a ...)))))
  (define (is? a) (clr-is System.Globalization.CCFixed a))
  (define (ccfixed? a) (clr-is System.Globalization.CCFixed a))
  (define-method-port
    kd-nearest
    System.Globalization.CCFixed
    kd_nearest
    (static: System.Int32 System.Int32 System.Int32))
  (define-method-port
    to-date-time
    System.Globalization.CCFixed
    ToDateTime
    (static:
      System.DateTime
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Double)
    (static: System.DateTime System.Int32))
  (define-method-port
    kday-on-or-after
    System.Globalization.CCFixed
    kday_on_or_after
    (static: System.Int32 System.Int32 System.Int32))
  (define-method-port
    kday-before
    System.Globalization.CCFixed
    kday_before
    (static: System.Int32 System.Int32 System.Int32))
  (define-method-port
    from-date-time
    System.Globalization.CCFixed
    FromDateTime
    (static: System.Int32 System.DateTime))
  (define-method-port
    day-of-week
    System.Globalization.CCFixed
    day_of_week
    (static: System.DayOfWeek System.Int32))
  (define-method-port
    kday-after
    System.Globalization.CCFixed
    kday_after
    (static: System.Int32 System.Int32 System.Int32))
  (define-method-port
    kday-on-or-before
    System.Globalization.CCFixed
    kday_on_or_before
    (static: System.Int32 System.Int32 System.Int32)))
