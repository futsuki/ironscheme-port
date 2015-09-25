(library (system globalization ccmath)
  (export new is? ccmath? div-mod signum mod div amod round)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Globalization.CCMath a ...)))))
  (define (is? a) (clr-is System.Globalization.CCMath a))
  (define (ccmath? a) (clr-is System.Globalization.CCMath a))
  (define-method-port
    div-mod
    System.Globalization.CCMath
    div_mod
    (static: System.Int32 System.Int32& System.Int32 System.Int32))
  (define-method-port
    signum
    System.Globalization.CCMath
    signum
    (static: System.Int32 System.Int32)
    (static: System.Int32 System.Double))
  (define-method-port
    mod
    System.Globalization.CCMath
    mod
    (static: System.Int32 System.Int32 System.Int32)
    (static: System.Double System.Double System.Double))
  (define-method-port
    div
    System.Globalization.CCMath
    div
    (static: System.Int32 System.Int32 System.Int32))
  (define-method-port
    amod
    System.Globalization.CCMath
    amod
    (static: System.Int32 System.Int32 System.Int32)
    (static: System.Double System.Double System.Double))
  (define-method-port
    round
    System.Globalization.CCMath
    round
    (static: System.Double System.Double)))
