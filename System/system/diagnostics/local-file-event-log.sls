(library (system diagnostics local-file-event-log)
  (export new
          is?
          local-file-event-log?
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
        ((_ a ...)
         #'(clr-new System.Diagnostics.LocalFileEventLog a ...)))))
  (define (is? a) (clr-is System.Diagnostics.LocalFileEventLog a))
  (define (local-file-event-log? a)
    (clr-is System.Diagnostics.LocalFileEventLog a))
  (define-method-port
    delete
    System.Diagnostics.LocalFileEventLog
    Delete
    (System.Void System.String System.String))
  (define-method-port
    begin-init
    System.Diagnostics.LocalFileEventLog
    BeginInit
    (System.Void))
  (define-method-port
    create-event-source
    System.Diagnostics.LocalFileEventLog
    CreateEventSource
    (System.Void System.Diagnostics.EventSourceCreationData))
  (define-method-port
    dispose
    System.Diagnostics.LocalFileEventLog
    Dispose
    (System.Void System.Boolean))
  (define-method-port
    write-entry
    System.Diagnostics.LocalFileEventLog
    WriteEntry
    (System.Void
      System.String[]
      System.Diagnostics.EventLogEntryType
      System.UInt32
      System.Int16
      System.Byte[]))
  (define-method-port
    source-exists?
    System.Diagnostics.LocalFileEventLog
    SourceExists
    (System.Boolean System.String System.String))
  (define-method-port
    register-display-name
    System.Diagnostics.LocalFileEventLog
    RegisterDisplayName
    (System.Void System.String System.Int64))
  (define-method-port
    modify-overflow-policy
    System.Diagnostics.LocalFileEventLog
    ModifyOverflowPolicy
    (System.Void System.Diagnostics.OverflowAction System.Int32))
  (define-method-port
    enable-notification
    System.Diagnostics.LocalFileEventLog
    EnableNotification
    (System.Void))
  (define-method-port
    exists?
    System.Diagnostics.LocalFileEventLog
    Exists
    (System.Boolean System.String System.String))
  (define-method-port
    end-init
    System.Diagnostics.LocalFileEventLog
    EndInit
    (System.Void))
  (define-method-port
    delete-event-source
    System.Diagnostics.LocalFileEventLog
    DeleteEventSource
    (System.Void System.String System.String))
  (define-method-port
    clear
    System.Diagnostics.LocalFileEventLog
    Clear
    (System.Void))
  (define-method-port
    log-name-from-source-name
    System.Diagnostics.LocalFileEventLog
    LogNameFromSourceName
    (System.String System.String System.String))
  (define-method-port
    disable-notification
    System.Diagnostics.LocalFileEventLog
    DisableNotification
    (System.Void))
  (define-method-port
    close
    System.Diagnostics.LocalFileEventLog
    Close
    (System.Void))
  (define-field-port
    overflow-action
    #f
    #f
    (property:)
    System.Diagnostics.LocalFileEventLog
    OverflowAction
    System.Diagnostics.OverflowAction)
  (define-field-port
    minimum-retention-days
    #f
    #f
    (property:)
    System.Diagnostics.LocalFileEventLog
    MinimumRetentionDays
    System.Int32)
  (define-field-port
    maximum-kilobytes-get
    maximum-kilobytes-set!
    maximum-kilobytes-update!
    (property:)
    System.Diagnostics.LocalFileEventLog
    MaximumKilobytes
    System.Int64))
