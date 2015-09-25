(library (unity-engine unity-log-writer)
  (export new
          is?
          unity-log-writer?
          init
          write
          write-string-to-unity-log
          encoding)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.UnityLogWriter a ...)))))
  (define (is? a) (clr-is UnityEngine.UnityLogWriter a))
  (define (unity-log-writer? a) (clr-is UnityEngine.UnityLogWriter a))
  (define-method-port
    init
    UnityEngine.UnityLogWriter
    Init
    (static: System.Void))
  (define-method-port
    write
    UnityEngine.UnityLogWriter
    Write
    (System.Void System.String)
    (System.Void System.Char))
  (define-method-port
    write-string-to-unity-log
    UnityEngine.UnityLogWriter
    WriteStringToUnityLog
    (static: System.Void System.String))
  (define-field-port
    encoding
    #f
    #f
    (property:)
    UnityEngine.UnityLogWriter
    Encoding
    System.Text.Encoding))
