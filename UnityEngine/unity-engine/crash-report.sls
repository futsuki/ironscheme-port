(library (unity-engine crash-report)
  (export is?
          crash-report?
          remove
          remove-all
          time
          text
          reports
          last-report)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.CrashReport a))
  (define (crash-report? a) (clr-is UnityEngine.CrashReport a))
  (define-method-port
    remove
    UnityEngine.CrashReport
    Remove
    (System.Void))
  (define-method-port
    remove-all
    UnityEngine.CrashReport
    RemoveAll
    (static: System.Void))
  (define-field-port
    time
    #f
    #f
    ()
    UnityEngine.CrashReport
    time
    System.DateTime)
  (define-field-port
    text
    #f
    #f
    ()
    UnityEngine.CrashReport
    text
    System.String)
  (define-field-port
    reports
    #f
    #f
    (static: property:)
    UnityEngine.CrashReport
    reports
    UnityEngine.CrashReport[])
  (define-field-port
    last-report
    #f
    #f
    (static: property:)
    UnityEngine.CrashReport
    lastReport
    UnityEngine.CrashReport))
