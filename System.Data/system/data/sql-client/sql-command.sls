(library (system data sql-client sql-command)
  (export new
          is?
          sql-command?
          end-execute-non-query
          prepare
          execute-xml-reader
          execute-scalar
          begin-execute-non-query
          reset-command-timeout
          end-execute-xml-reader
          cancel
          execute-reader
          create-parameter
          begin-execute-reader
          begin-execute-xml-reader
          clone
          execute-non-query
          end-execute-reader
          command-text-get
          command-text-set!
          command-text-update!
          command-timeout-get
          command-timeout-set!
          command-timeout-update!
          command-type-get
          command-type-set!
          command-type-update!
          connection-get
          connection-set!
          connection-update!
          design-time-visible?-get
          design-time-visible?-set!
          design-time-visible?-update!
          parameters
          transaction-get
          transaction-set!
          transaction-update!
          updated-row-source-get
          updated-row-source-set!
          updated-row-source-update!
          notification-get
          notification-set!
          notification-update!
          notification-auto-enlist?-get
          notification-auto-enlist?-set!
          notification-auto-enlist?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.SqlClient.SqlCommand a ...)))))
  (define (is? a) (clr-is System.Data.SqlClient.SqlCommand a))
  (define (sql-command? a) (clr-is System.Data.SqlClient.SqlCommand a))
  (define-method-port
    end-execute-non-query
    System.Data.SqlClient.SqlCommand
    EndExecuteNonQuery
    (System.Int32 System.IAsyncResult))
  (define-method-port
    prepare
    System.Data.SqlClient.SqlCommand
    Prepare
    (System.Void))
  (define-method-port
    execute-xml-reader
    System.Data.SqlClient.SqlCommand
    ExecuteXmlReader
    (System.Xml.XmlReader))
  (define-method-port
    execute-scalar
    System.Data.SqlClient.SqlCommand
    ExecuteScalar
    (System.Object))
  (define-method-port
    begin-execute-non-query
    System.Data.SqlClient.SqlCommand
    BeginExecuteNonQuery
    (System.IAsyncResult System.AsyncCallback System.Object)
    (System.IAsyncResult))
  (define-method-port
    reset-command-timeout
    System.Data.SqlClient.SqlCommand
    ResetCommandTimeout
    (System.Void))
  (define-method-port
    end-execute-xml-reader
    System.Data.SqlClient.SqlCommand
    EndExecuteXmlReader
    (System.Xml.XmlReader System.IAsyncResult))
  (define-method-port
    cancel
    System.Data.SqlClient.SqlCommand
    Cancel
    (System.Void))
  (define-method-port
    execute-reader
    System.Data.SqlClient.SqlCommand
    ExecuteReader
    (System.Data.SqlClient.SqlDataReader System.Data.CommandBehavior)
    (System.Data.SqlClient.SqlDataReader))
  (define-method-port
    create-parameter
    System.Data.SqlClient.SqlCommand
    CreateParameter
    (System.Data.SqlClient.SqlParameter))
  (define-method-port
    begin-execute-reader
    System.Data.SqlClient.SqlCommand
    BeginExecuteReader
    (System.IAsyncResult
      System.AsyncCallback
      System.Object
      System.Data.CommandBehavior)
    (System.IAsyncResult System.AsyncCallback System.Object)
    (System.IAsyncResult System.Data.CommandBehavior)
    (System.IAsyncResult))
  (define-method-port
    begin-execute-xml-reader
    System.Data.SqlClient.SqlCommand
    BeginExecuteXmlReader
    (System.IAsyncResult)
    (System.IAsyncResult System.AsyncCallback System.Object))
  (define-method-port
    clone
    System.Data.SqlClient.SqlCommand
    Clone
    (System.Data.SqlClient.SqlCommand))
  (define-method-port
    execute-non-query
    System.Data.SqlClient.SqlCommand
    ExecuteNonQuery
    (System.Int32))
  (define-method-port
    end-execute-reader
    System.Data.SqlClient.SqlCommand
    EndExecuteReader
    (System.Data.SqlClient.SqlDataReader System.IAsyncResult))
  (define-field-port
    command-text-get
    command-text-set!
    command-text-update!
    (property:)
    System.Data.SqlClient.SqlCommand
    CommandText
    System.String)
  (define-field-port
    command-timeout-get
    command-timeout-set!
    command-timeout-update!
    (property:)
    System.Data.SqlClient.SqlCommand
    CommandTimeout
    System.Int32)
  (define-field-port
    command-type-get
    command-type-set!
    command-type-update!
    (property:)
    System.Data.SqlClient.SqlCommand
    CommandType
    System.Data.CommandType)
  (define-field-port
    connection-get
    connection-set!
    connection-update!
    (property:)
    System.Data.SqlClient.SqlCommand
    Connection
    System.Data.SqlClient.SqlConnection)
  (define-field-port
    design-time-visible?-get
    design-time-visible?-set!
    design-time-visible?-update!
    (property:)
    System.Data.SqlClient.SqlCommand
    DesignTimeVisible
    System.Boolean)
  (define-field-port
    parameters
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlCommand
    Parameters
    System.Data.SqlClient.SqlParameterCollection)
  (define-field-port
    transaction-get
    transaction-set!
    transaction-update!
    (property:)
    System.Data.SqlClient.SqlCommand
    Transaction
    System.Data.SqlClient.SqlTransaction)
  (define-field-port
    updated-row-source-get
    updated-row-source-set!
    updated-row-source-update!
    (property:)
    System.Data.SqlClient.SqlCommand
    UpdatedRowSource
    System.Data.UpdateRowSource)
  (define-field-port
    notification-get
    notification-set!
    notification-update!
    (property:)
    System.Data.SqlClient.SqlCommand
    Notification
    System.Data.Sql.SqlNotificationRequest)
  (define-field-port
    notification-auto-enlist?-get
    notification-auto-enlist?-set!
    notification-auto-enlist?-update!
    (property:)
    System.Data.SqlClient.SqlCommand
    NotificationAutoEnlist
    System.Boolean))
