(library (unity-engine sleep-timeout)
  (export new is? sleep-timeout? never-sleep system-setting)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.SleepTimeout a ...)))))
  (define (is? a) (clr-is UnityEngine.SleepTimeout a))
  (define (sleep-timeout? a) (clr-is UnityEngine.SleepTimeout a))
  (define-field-port
    never-sleep
    #f
    #f
    (static:)
    UnityEngine.SleepTimeout
    NeverSleep
    System.Int32)
  (define-field-port
    system-setting
    #f
    #f
    (static:)
    UnityEngine.SleepTimeout
    SystemSetting
    System.Int32))
