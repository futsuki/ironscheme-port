(library (system diagnostics event-log)
  (export new
          is?
          event-log?
          delete
          begin-init
          create-event-source
          register-display-name
          write-entry
          source-exists?
          modify-overflow-policy
          get-event-logs
          write-event
          end-init
          delete-event-source
          clear
          log-name-from-source-name
          exists?
          close
          enable-raising-events?-get
          enable-raising-events?-set!
          enable-raising-events?-update!
          entries
          log-get
          log-set!
          log-update!
          log-display-name
          machine-name-get
          machine-name-set!
          machine-name-update!
          source-get
          source-set!
          source-update!
          synchronizing-object-get
          synchronizing-object-set!
          synchronizing-object-update!
          overflow-action
          minimum-retention-days
          maximum-kilobytes-get
          maximum-kilobytes-set!
          maximum-kilobytes-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Diagnostics.EventLog a ...)))))
  (define (is? a) (clr-is System.Diagnostics.EventLog a))
  (define (event-log? a) (clr-is System.Diagnostics.EventLog a))
  (define-method-port
    delete
    System.Diagnostics.EventLog
    Delete
    (static: System.Void System.String System.String)
    (static: System.Void System.String))
  (define-method-port
    begin-init
    System.Diagnostics.EventLog
    BeginInit
    (System.Void))
  (define-method-port
    create-event-source
    System.Diagnostics.EventLog
    CreateEventSource
    (static: System.Void System.Diagnostics.EventSourceCreationData)
    (static: System.Void System.String System.String System.String)
    (static: System.Void System.String System.String))
  (define-method-port
    register-display-name
    System.Diagnostics.EventLog
    RegisterDisplayName
    (System.Void System.String System.Int64))
  (define-method-port
    write-entry
    System.Diagnostics.EventLog
    WriteEntry
    (static:
      System.Void
      System.String
      System.String
      System.Diagnostics.EventLogEntryType
      System.Int32
      System.Int16
      System.Byte[])
    (static:
      System.Void
      System.String
      System.String
      System.Diagnostics.EventLogEntryType
      System.Int32
      System.Int16)
    (static:
      System.Void
      System.String
      System.String
      System.Diagnostics.EventLogEntryType
      System.Int32)
    (static:
      System.Void
      System.String
      System.String
      System.Diagnostics.EventLogEntryType)
    (static: System.Void System.String System.String)
    (System.Void
      System.String
      System.Diagnostics.EventLogEntryType
      System.Int32
      System.Int16
      System.Byte[])
    (System.Void
      System.String
      System.Diagnostics.EventLogEntryType
      System.Int32
      System.Int16)
    (System.Void
      System.String
      System.Diagnostics.EventLogEntryType
      System.Int32)
    (System.Void System.String System.Diagnostics.EventLogEntryType)
    (System.Void System.String))
  (define-method-port
    source-exists?
    System.Diagnostics.EventLog
    SourceExists
    (static: System.Boolean System.String System.String)
    (static: System.Boolean System.String))
  (define-method-port
    modify-overflow-policy
    System.Diagnostics.EventLog
    ModifyOverflowPolicy
    (System.Void System.Diagnostics.OverflowAction System.Int32))
  (define-method-port
    get-event-logs
    System.Diagnostics.EventLog
    GetEventLogs
    (static: System.Diagnostics.EventLog[] System.String)
    (static: System.Diagnostics.EventLog[]))
  (define-method-port
    write-event
    System.Diagnostics.EventLog
    WriteEvent
    (static:
      System.Void
      System.String
      System.Diagnostics.EventInstance
      System.Byte[]
      System.Object[])
    (static:
      System.Void
      System.String
      System.Diagnostics.EventInstance
      System.Object[])
    (System.Void
      System.Diagnostics.EventInstance
      System.Byte[]
      System.Object[])
    (System.Void System.Diagnostics.EventInstance System.Object[]))
  (define-method-port
    end-init
    System.Diagnostics.EventLog
    EndInit
    (System.Void))
  (define-method-port
    delete-event-source
    System.Diagnostics.EventLog
    DeleteEventSource
    (static: System.Void System.String System.String)
    (static: System.Void System.String))
  (define-method-port
    clear
    System.Diagnostics.EventLog
    Clear
    (System.Void))
  (define-method-port
    log-name-from-source-name
    System.Diagnostics.EventLog
    LogNameFromSourceName
    (static: System.String System.String System.String))
  (define-method-port
    exists?
    System.Diagnostics.EventLog
    Exists
    (static: System.Boolean System.String System.String)
    (static: System.Boolean System.String))
  (define-method-port
    close
    System.Diagnostics.EventLog
    Close
    (System.Void))
  (define-field-port
    enable-raising-events?-get
    enable-raising-events?-set!
    enable-raising-events?-update!
    (property:)
    System.Diagnostics.EventLog
    EnableRaisingEvents
    System.Boolean)
  (define-field-port
    entries
    #f
    #f
    (property:)
    System.Diagnostics.EventLog
    Entries
    System.Diagnostics.EventLogEntryCollection)
  (define-field-port
    log-get
    log-set!
    log-update!
    (property:)
    System.Diagnostics.EventLog
    Log
    System.String)
  (define-field-port
    log-display-name
    #f
    #f
    (property:)
    System.Diagnostics.EventLog
    LogDisplayName
    System.String)
  (define-field-port
    machine-name-get
    machine-name-set!
    machine-name-update!
    (property:)
    System.Diagnostics.EventLog
    MachineName
    System.String)
  (define-field-port
    source-get
    source-set!
    source-update!
    (property:)
    System.Diagnostics.EventLog
    Source
    System.String)
  (define-field-port
    synchronizing-object-get
    synchronizing-object-set!
    synchronizing-object-update!
    (property:)
    System.Diagnostics.EventLog
    SynchronizingObject
    System.ComponentModel.ISynchronizeInvoke)
  (define-field-port
    overflow-action
    #f
    #f
    (property:)
    System.Diagnostics.EventLog
    OverflowAction
    System.Diagnostics.OverflowAction)
  (define-field-port
    minimum-retention-days
    #f
    #f
    (property:)
    System.Diagnostics.EventLog
    MinimumRetentionDays
    System.Int32)
  (define-field-port
    maximum-kilobytes-get
    maximum-kilobytes-set!
    maximum-kilobytes-update!
    (property:)
    System.Diagnostics.EventLog
    MaximumKilobytes
    System.Int64))
