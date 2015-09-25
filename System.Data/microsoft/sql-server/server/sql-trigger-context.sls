(library (microsoft sql-server server sql-trigger-context)
  (export is?
          sql-trigger-context?
          is-updated-column?
          column-count
          event-data
          trigger-action)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is Microsoft.SqlServer.Server.SqlTriggerContext a))
  (define (sql-trigger-context? a)
    (clr-is Microsoft.SqlServer.Server.SqlTriggerContext a))
  (define-method-port
    is-updated-column?
    Microsoft.SqlServer.Server.SqlTriggerContext
    IsUpdatedColumn
    (System.Boolean System.Int32))
  (define-field-port
    column-count
    #f
    #f
    (property:)
    Microsoft.SqlServer.Server.SqlTriggerContext
    ColumnCount
    System.Int32)
  (define-field-port
    event-data
    #f
    #f
    (property:)
    Microsoft.SqlServer.Server.SqlTriggerContext
    EventData
    System.Data.SqlTypes.SqlXml)
  (define-field-port
    trigger-action
    #f
    #f
    (property:)
    Microsoft.SqlServer.Server.SqlTriggerContext
    TriggerAction
    Microsoft.SqlServer.Server.TriggerAction))
