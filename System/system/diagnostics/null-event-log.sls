(library (system diagnostics null-event-log)
  (export new
          is?
          null-event-log?
          delete
          begin-init
          create-event-source
          dispose
          write-entry
          source-exists?
          register-display-name
          modify-overflow-policy
          enable-notification
          exists?
          end-init
          delete-event-source
          clear
          log-name-from-source-name
          disable-notification
          close
          overflow-action
          minimum-retention-days
          maximum-kilobytes-get
          maximum-kilobytes-set!
          maximum-kilobytes-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Diagnostics.NullEventLog a ...)))))
  (define (is? a) (clr-is System.Diagnostics.NullEventLog a))
  (define (null-event-log? a)
    (clr-is System.Diagnostics.NullEventLog a))
  (define-method-port
    delete
    System.Diagnostics.NullEventLog
    Delete
    (System.Void System.String System.String))
  (define-method-port
    begin-init
    System.Diagnostics.NullEventLog
    BeginInit
    (System.Void))
  (define-method-port
    create-event-source
    System.Diagnostics.NullEventLog
    CreateEventSource
    (System.Void System.Diagnostics.EventSourceCreationData))
  (define-method-port
    dispose
    System.Diagnostics.NullEventLog
    Dispose
    (System.Void System.Boolean))
  (define-method-port
    write-entry
    System.Diagnostics.NullEventLog
    WriteEntry
    (System.Void
      System.String[]
      System.Diagnostics.EventLogEntryType
      System.UInt32
      System.Int16
      System.Byte[]))
  (define-method-port
    source-exists?
    System.Diagnostics.NullEventLog
    SourceExists
    (System.Boolean System.String System.String))
  (define-method-port
    register-display-name
    System.Diagnostics.NullEventLog
    RegisterDisplayName
    (System.Void System.String System.Int64))
  (define-method-port
    modify-overflow-policy
    System.Diagnostics.NullEventLog
    ModifyOverflowPolicy
    (System.Void System.Diagnostics.OverflowAction System.Int32))
  (define-method-port
    enable-notification
    System.Diagnostics.NullEventLog
    EnableNotification
    (System.Void))
  (define-method-port
    exists?
    System.Diagnostics.NullEventLog
    Exists
    (System.Boolean System.String System.String))
  (define-method-port
    end-init
    System.Diagnostics.NullEventLog
    EndInit
    (System.Void))
  (define-method-port
    delete-event-source
    System.Diagnostics.NullEventLog
    DeleteEventSource
    (System.Void System.String System.String))
  (define-method-port
    clear
    System.Diagnostics.NullEventLog
    Clear
    (System.Void))
  (define-method-port
    log-name-from-source-name
    System.Diagnostics.NullEventLog
    LogNameFromSourceName
    (System.String System.String System.String))
  (define-method-port
    disable-notification
    System.Diagnostics.NullEventLog
    DisableNotification
    (System.Void))
  (define-method-port
    close
    System.Diagnostics.NullEventLog
    Close
    (System.Void))
  (define-field-port
    overflow-action
    #f
    #f
    (property:)
    System.Diagnostics.NullEventLog
    OverflowAction
    System.Diagnostics.OverflowAction)
  (define-field-port
    minimum-retention-days
    #f
    #f
    (property:)
    System.Diagnostics.NullEventLog
    MinimumRetentionDays
    System.Int32)
  (define-field-port
    maximum-kilobytes-get
    maximum-kilobytes-set!
    maximum-kilobytes-update!
    (property:)
    System.Diagnostics.NullEventLog
    MaximumKilobytes
    System.Int64))
