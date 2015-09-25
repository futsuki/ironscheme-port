(library (system configuration exe-context)
  (export is? exe-context? exe-path user-level)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Configuration.ExeContext a))
  (define (exe-context? a) (clr-is System.Configuration.ExeContext a))
  (define-field-port
    exe-path
    #f
    #f
    (property:)
    System.Configuration.ExeContext
    ExePath
    System.String)
  (define-field-port
    user-level
    #f
    #f
    (property:)
    System.Configuration.ExeContext
    UserLevel
    System.Configuration.ConfigurationUserLevel))
