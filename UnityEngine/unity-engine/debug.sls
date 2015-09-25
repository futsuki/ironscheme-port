(library (unity-engine debug)
  (export new
          is?
          debug?
          log
          draw-line
          assert
          log-error
          break
          log-error-format
          log-warning
          clear-developer-console
          log-exception
          log-format
          draw-ray
          debug-break
          log-warning-format
          developer-console-visible?-get
          developer-console-visible?-set!
          developer-console-visible?-update!
          is-debug-build?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Debug a ...)))))
  (define (is? a) (clr-is UnityEngine.Debug a))
  (define (debug? a) (clr-is UnityEngine.Debug a))
  (define-method-port
    log
    UnityEngine.Debug
    Log
    (static: System.Void System.Object UnityEngine.Object)
    (static: System.Void System.Object))
  (define-method-port
    draw-line
    UnityEngine.Debug
    DrawLine
    (static: System.Void UnityEngine.Vector3 UnityEngine.Vector3)
    (static:
      System.Void
      UnityEngine.Vector3
      UnityEngine.Vector3
      UnityEngine.Color)
    (static:
      System.Void
      UnityEngine.Vector3
      UnityEngine.Vector3
      UnityEngine.Color
      System.Single)
    (static:
      System.Void
      UnityEngine.Vector3
      UnityEngine.Vector3
      UnityEngine.Color
      System.Single
      System.Boolean))
  (define-method-port
    assert
    UnityEngine.Debug
    Assert
    (static: System.Void System.Boolean System.String System.Object[])
    (static: System.Void System.Boolean System.String)
    (static: System.Void System.Boolean))
  (define-method-port
    log-error
    UnityEngine.Debug
    LogError
    (static: System.Void System.Object UnityEngine.Object)
    (static: System.Void System.Object))
  (define-method-port
    break
    UnityEngine.Debug
    Break
    (static: System.Void))
  (define-method-port
    log-error-format
    UnityEngine.Debug
    LogErrorFormat
    (static:
      System.Void
      UnityEngine.Object
      System.String
      System.Object[])
    (static: System.Void System.String System.Object[]))
  (define-method-port
    log-warning
    UnityEngine.Debug
    LogWarning
    (static: System.Void System.Object UnityEngine.Object)
    (static: System.Void System.Object))
  (define-method-port
    clear-developer-console
    UnityEngine.Debug
    ClearDeveloperConsole
    (static: System.Void))
  (define-method-port
    log-exception
    UnityEngine.Debug
    LogException
    (static: System.Void System.Exception UnityEngine.Object)
    (static: System.Void System.Exception))
  (define-method-port
    log-format
    UnityEngine.Debug
    LogFormat
    (static:
      System.Void
      UnityEngine.Object
      System.String
      System.Object[])
    (static: System.Void System.String System.Object[]))
  (define-method-port
    draw-ray
    UnityEngine.Debug
    DrawRay
    (static:
      System.Void
      UnityEngine.Vector3
      UnityEngine.Vector3
      UnityEngine.Color
      System.Single
      System.Boolean)
    (static: System.Void UnityEngine.Vector3 UnityEngine.Vector3)
    (static:
      System.Void
      UnityEngine.Vector3
      UnityEngine.Vector3
      UnityEngine.Color)
    (static:
      System.Void
      UnityEngine.Vector3
      UnityEngine.Vector3
      UnityEngine.Color
      System.Single))
  (define-method-port
    debug-break
    UnityEngine.Debug
    DebugBreak
    (static: System.Void))
  (define-method-port
    log-warning-format
    UnityEngine.Debug
    LogWarningFormat
    (static:
      System.Void
      UnityEngine.Object
      System.String
      System.Object[])
    (static: System.Void System.String System.Object[]))
  (define-field-port
    developer-console-visible?-get
    developer-console-visible?-set!
    developer-console-visible?-update!
    (static: property:)
    UnityEngine.Debug
    developerConsoleVisible
    System.Boolean)
  (define-field-port
    is-debug-build?
    #f
    #f
    (static: property:)
    UnityEngine.Debug
    isDebugBuild
    System.Boolean))
