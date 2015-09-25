(library (unity-engine stack-trace-utility)
  (export new
          is?
          stack-trace-utility?
          extract-string-from-exception
          extract-stack-trace)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.StackTraceUtility a ...)))))
  (define (is? a) (clr-is UnityEngine.StackTraceUtility a))
  (define (stack-trace-utility? a)
    (clr-is UnityEngine.StackTraceUtility a))
  (define-method-port
    extract-string-from-exception
    UnityEngine.StackTraceUtility
    ExtractStringFromException
    (static: System.String System.Object))
  (define-method-port
    extract-stack-trace
    UnityEngine.StackTraceUtility
    ExtractStackTrace
    (static: System.String)))
