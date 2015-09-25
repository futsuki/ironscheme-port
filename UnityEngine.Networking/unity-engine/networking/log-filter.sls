(library (unity-engine networking log-filter)
  (export new
          is?
          log-filter?
          debug
          info
          warn
          error
          fatal
          current-get
          current-set!
          current-update!
          current-log-level-get
          current-log-level-set!
          current-log-level-update!
          log-debug?
          log-info?
          log-warn?
          log-error?
          log-fatal?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.LogFilter a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.LogFilter a))
  (define (log-filter? a) (clr-is UnityEngine.Networking.LogFilter a))
  (define-field-port
    debug
    #f
    #f
    (static:)
    UnityEngine.Networking.LogFilter
    Debug
    System.Int32)
  (define-field-port
    info
    #f
    #f
    (static:)
    UnityEngine.Networking.LogFilter
    Info
    System.Int32)
  (define-field-port
    warn
    #f
    #f
    (static:)
    UnityEngine.Networking.LogFilter
    Warn
    System.Int32)
  (define-field-port
    error
    #f
    #f
    (static:)
    UnityEngine.Networking.LogFilter
    Error
    System.Int32)
  (define-field-port
    fatal
    #f
    #f
    (static:)
    UnityEngine.Networking.LogFilter
    Fatal
    System.Int32)
  (define-field-port
    current-get
    current-set!
    current-update!
    (static:)
    UnityEngine.Networking.LogFilter
    current
    UnityEngine.Networking.LogFilter+FilterLevel)
  (define-field-port
    current-log-level-get
    current-log-level-set!
    current-log-level-update!
    (static: property:)
    UnityEngine.Networking.LogFilter
    currentLogLevel
    System.Int32)
  (define-field-port
    log-debug?
    #f
    #f
    (static: property:)
    UnityEngine.Networking.LogFilter
    logDebug
    System.Boolean)
  (define-field-port
    log-info?
    #f
    #f
    (static: property:)
    UnityEngine.Networking.LogFilter
    logInfo
    System.Boolean)
  (define-field-port
    log-warn?
    #f
    #f
    (static: property:)
    UnityEngine.Networking.LogFilter
    logWarn
    System.Boolean)
  (define-field-port
    log-error?
    #f
    #f
    (static: property:)
    UnityEngine.Networking.LogFilter
    logError
    System.Boolean)
  (define-field-port
    log-fatal?
    #f
    #f
    (static: property:)
    UnityEngine.Networking.LogFilter
    logFatal
    System.Boolean))
