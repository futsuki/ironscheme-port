(library (system diagnostics win32-event-log)
  (export new
          is?
          win32-event-log?
          delete
          begin-init
          create-event-source
          dispose
          write-entry
          disable-notification
          source-exists?
          register-display-name
          modify-overflow-policy
          enable-notification
          end-init
          delete-event-source
          clear
          log-name-from-source-name
          exists?
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
         #'(clr-new System.Diagnostics.Win32EventLog a ...)))))
  (define (is? a) (clr-is System.Diagnostics.Win32EventLog a))
  (define (win32-event-log? a)
    (clr-is System.Diagnostics.Win32EventLog a))
  (define-method-port
    delete
    System.Diagnostics.Win32EventLog
    Delete
    (System.Void System.String System.String))
  (define-method-port
    begin-init
    System.Diagnostics.Win32EventLog
    BeginInit
    (System.Void))
  (define-method-port
    create-event-source
    System.Diagnostics.Win32EventLog
    CreateEventSource
    (System.Void System.Diagnostics.EventSourceCreationData))
  (define-method-port
    dispose
    System.Diagnostics.Win32EventLog
    Dispose
    (System.Void System.Boolean))
  (define-method-port
    write-entry
    System.Diagnostics.Win32EventLog
    WriteEntry
    (System.Void
      System.String[]
      System.Diagnostics.EventLogEntryType
      System.UInt32
      System.Int16
      System.Byte[]))
  (define-method-port
    disable-notification
    System.Diagnostics.Win32EventLog
    DisableNotification
    (System.Void))
  (define-method-port
    source-exists?
    System.Diagnostics.Win32EventLog
    SourceExists
    (System.Boolean System.String System.String))
  (define-method-port
    register-display-name
    System.Diagnostics.Win32EventLog
    RegisterDisplayName
    (System.Void System.String System.Int64))
  (define-method-port
    modify-overflow-policy
    System.Diagnostics.Win32EventLog
    ModifyOverflowPolicy
    (System.Void System.Diagnostics.OverflowAction System.Int32))
  (define-method-port
    enable-notification
    System.Diagnostics.Win32EventLog
    EnableNotification
    (System.Void))
  (define-method-port
    end-init
    System.Diagnostics.Win32EventLog
    EndInit
    (System.Void))
  (define-method-port
    delete-event-source
    System.Diagnostics.Win32EventLog
    DeleteEventSource
    (System.Void System.String System.String))
  (define-method-port
    clear
    System.Diagnostics.Win32EventLog
    Clear
    (System.Void))
  (define-method-port
    log-name-from-source-name
    System.Diagnostics.Win32EventLog
    LogNameFromSourceName
    (System.String System.String System.String))
  (define-method-port
    exists?
    System.Diagnostics.Win32EventLog
    Exists
    (System.Boolean System.String System.String))
  (define-method-port
    close
    System.Diagnostics.Win32EventLog
    Close
    (System.Void))
  (define-field-port
    overflow-action
    #f
    #f
    (property:)
    System.Diagnostics.Win32EventLog
    OverflowAction
    System.Diagnostics.OverflowAction)
  (define-field-port
    minimum-retention-days
    #f
    #f
    (property:)
    System.Diagnostics.Win32EventLog
    MinimumRetentionDays
    System.Int32)
  (define-field-port
    maximum-kilobytes-get
    maximum-kilobytes-set!
    maximum-kilobytes-update!
    (property:)
    System.Diagnostics.Win32EventLog
    MaximumKilobytes
    System.Int64))
