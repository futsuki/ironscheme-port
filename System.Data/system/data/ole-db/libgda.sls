(library (system data ole-db libgda)
  (export new
          is?
          libgda?
          gda-value-get-string
          gda-connection-get-password
          gda-connection-begin-transaction?
          gda-connection-get-dsn
          gda-connection-get-database
          gda-connection-is-open?
          gda-type-to-string
          gda-value-get-type
          gda-error-get-description
          gda-data-model-get-column-title
          gda-init
          gda-field-attributes-get-allow-null?
          gda-data-model-get-column-position
          gda-connection-get-provider
          gda-value-get-time
          gda-connection-commit-transaction?
          gda-command-new
          gda-client-open-connection-from-string
          gda-connection-execute-command
          gda-value-get-tinyint
          gda-value-get-single
          gda-value-is-null?
          gda-value-get-timestamp
          gda-connection-get-errors
          gda-value-get-double
          gda-error-get-number
          gda-client-new
          gda-command-set-text
          gda-connection-get-server-version
          gda-value-get-boolean?
          free-object
          gda-data-model-describe-column
          gda-value-stringify
          gda-transaction-get-name
          gda-field-attributes-get-gdatype
          gda-transaction-new
          gda-field-attributes-get-name
          gda-connection-execute-single-command
          gda-error-get-source
          gda-command-set-command-type
          gda-connection-rollback-transaction?
          gda-value-get-integer
          gda-field-attributes-get-defined-size
          gda-field-attributes-free
          gda-data-model-get-n-rows
          gda-field-attributes-get-unique-key?
          gda-transaction-get-isolation-level
          gda-value-get-date
          gda-connection-get-cnc-string
          gda-field-attributes-get-scale
          gda-value-get-bigint
          gda-error-get-sqlstate
          gda-connection-execute-non-query
          gda-value-get-smallint
          gda-connection-get-username
          gda-parameter-list-new
          gda-field-attributes-get-primary-key?
          gda-connection-close?
          gda-transaction-set-isolation-level
          gda-data-model-get-value-at
          gda-transaction-set-name
          gda-data-model-get-n-columns
          gda-connection-change-database?
          gda-client-open-connection
          gda-client)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.OleDb.libgda a ...)))))
  (define (is? a) (clr-is System.Data.OleDb.libgda a))
  (define (libgda? a) (clr-is System.Data.OleDb.libgda a))
  (define-method-port
    gda-value-get-string
    System.Data.OleDb.libgda
    gda_value_get_string
    (static: System.String System.IntPtr))
  (define-method-port
    gda-connection-get-password
    System.Data.OleDb.libgda
    gda_connection_get_password
    (static: System.String System.IntPtr))
  (define-method-port
    gda-connection-begin-transaction?
    System.Data.OleDb.libgda
    gda_connection_begin_transaction
    (static: System.Boolean System.IntPtr System.IntPtr))
  (define-method-port
    gda-connection-get-dsn
    System.Data.OleDb.libgda
    gda_connection_get_dsn
    (static: System.String System.IntPtr))
  (define-method-port
    gda-connection-get-database
    System.Data.OleDb.libgda
    gda_connection_get_database
    (static: System.String System.IntPtr))
  (define-method-port
    gda-connection-is-open?
    System.Data.OleDb.libgda
    gda_connection_is_open
    (static: System.Boolean System.IntPtr))
  (define-method-port
    gda-type-to-string
    System.Data.OleDb.libgda
    gda_type_to_string
    (static: System.String System.Data.OleDb.GdaValueType))
  (define-method-port
    gda-value-get-type
    System.Data.OleDb.libgda
    gda_value_get_type
    (static: System.Data.OleDb.GdaValueType System.IntPtr))
  (define-method-port
    gda-error-get-description
    System.Data.OleDb.libgda
    gda_error_get_description
    (static: System.String System.IntPtr))
  (define-method-port
    gda-data-model-get-column-title
    System.Data.OleDb.libgda
    gda_data_model_get_column_title
    (static: System.String System.IntPtr System.Int32))
  (define-method-port
    gda-init
    System.Data.OleDb.libgda
    gda_init
    (static:
      System.Void
      System.String
      System.String
      System.Int32
      System.String[]))
  (define-method-port
    gda-field-attributes-get-allow-null?
    System.Data.OleDb.libgda
    gda_field_attributes_get_allow_null
    (static: System.Boolean System.IntPtr))
  (define-method-port
    gda-data-model-get-column-position
    System.Data.OleDb.libgda
    gda_data_model_get_column_position
    (static: System.Int32 System.IntPtr System.String))
  (define-method-port
    gda-connection-get-provider
    System.Data.OleDb.libgda
    gda_connection_get_provider
    (static: System.String System.IntPtr))
  (define-method-port
    gda-value-get-time
    System.Data.OleDb.libgda
    gda_value_get_time
    (static: System.IntPtr System.IntPtr))
  (define-method-port
    gda-connection-commit-transaction?
    System.Data.OleDb.libgda
    gda_connection_commit_transaction
    (static: System.Boolean System.IntPtr System.IntPtr))
  (define-method-port
    gda-command-new
    System.Data.OleDb.libgda
    gda_command_new
    (static:
      System.IntPtr
      System.String
      System.Data.OleDb.GdaCommandType
      System.Data.OleDb.GdaCommandOptions))
  (define-method-port
    gda-client-open-connection-from-string
    System.Data.OleDb.libgda
    gda_client_open_connection_from_string
    (static:
      System.IntPtr
      System.IntPtr
      System.String
      System.String
      System.Data.OleDb.GdaConnectionOptions))
  (define-method-port
    gda-connection-execute-command
    System.Data.OleDb.libgda
    gda_connection_execute_command
    (static: System.IntPtr System.IntPtr System.IntPtr System.IntPtr))
  (define-method-port
    gda-value-get-tinyint
    System.Data.OleDb.libgda
    gda_value_get_tinyint
    (static: System.Byte System.IntPtr))
  (define-method-port
    gda-value-get-single
    System.Data.OleDb.libgda
    gda_value_get_single
    (static: System.Single System.IntPtr))
  (define-method-port
    gda-value-is-null?
    System.Data.OleDb.libgda
    gda_value_is_null
    (static: System.Boolean System.IntPtr))
  (define-method-port
    gda-value-get-timestamp
    System.Data.OleDb.libgda
    gda_value_get_timestamp
    (static: System.IntPtr System.IntPtr))
  (define-method-port
    gda-connection-get-errors
    System.Data.OleDb.libgda
    gda_connection_get_errors
    (static: System.IntPtr System.IntPtr))
  (define-method-port
    gda-value-get-double
    System.Data.OleDb.libgda
    gda_value_get_double
    (static: System.Double System.IntPtr))
  (define-method-port
    gda-error-get-number
    System.Data.OleDb.libgda
    gda_error_get_number
    (static: System.Int64 System.IntPtr))
  (define-method-port
    gda-client-new
    System.Data.OleDb.libgda
    gda_client_new
    (static: System.IntPtr))
  (define-method-port
    gda-command-set-text
    System.Data.OleDb.libgda
    gda_command_set_text
    (static: System.Void System.IntPtr System.String))
  (define-method-port
    gda-connection-get-server-version
    System.Data.OleDb.libgda
    gda_connection_get_server_version
    (static: System.String System.IntPtr))
  (define-method-port
    gda-value-get-boolean?
    System.Data.OleDb.libgda
    gda_value_get_boolean
    (static: System.Boolean System.IntPtr))
  (define-method-port
    free-object
    System.Data.OleDb.libgda
    FreeObject
    (static: System.Void System.IntPtr))
  (define-method-port
    gda-data-model-describe-column
    System.Data.OleDb.libgda
    gda_data_model_describe_column
    (static: System.IntPtr System.IntPtr System.Int32))
  (define-method-port
    gda-value-stringify
    System.Data.OleDb.libgda
    gda_value_stringify
    (static: System.String System.IntPtr))
  (define-method-port
    gda-transaction-get-name
    System.Data.OleDb.libgda
    gda_transaction_get_name
    (static: System.IntPtr System.IntPtr))
  (define-method-port
    gda-field-attributes-get-gdatype
    System.Data.OleDb.libgda
    gda_field_attributes_get_gdatype
    (static: System.Data.OleDb.GdaValueType System.IntPtr))
  (define-method-port
    gda-transaction-new
    System.Data.OleDb.libgda
    gda_transaction_new
    (static: System.IntPtr System.String))
  (define-method-port
    gda-field-attributes-get-name
    System.Data.OleDb.libgda
    gda_field_attributes_get_name
    (static: System.String System.IntPtr))
  (define-method-port
    gda-connection-execute-single-command
    System.Data.OleDb.libgda
    gda_connection_execute_single_command
    (static: System.IntPtr System.IntPtr System.IntPtr System.IntPtr))
  (define-method-port
    gda-error-get-source
    System.Data.OleDb.libgda
    gda_error_get_source
    (static: System.String System.IntPtr))
  (define-method-port
    gda-command-set-command-type
    System.Data.OleDb.libgda
    gda_command_set_command_type
    (static:
      System.Void
      System.IntPtr
      System.Data.OleDb.GdaCommandType))
  (define-method-port
    gda-connection-rollback-transaction?
    System.Data.OleDb.libgda
    gda_connection_rollback_transaction
    (static: System.Boolean System.IntPtr System.IntPtr))
  (define-method-port
    gda-value-get-integer
    System.Data.OleDb.libgda
    gda_value_get_integer
    (static: System.Int32 System.IntPtr))
  (define-method-port
    gda-field-attributes-get-defined-size
    System.Data.OleDb.libgda
    gda_field_attributes_get_defined_size
    (static: System.Int64 System.IntPtr))
  (define-method-port
    gda-field-attributes-free
    System.Data.OleDb.libgda
    gda_field_attributes_free
    (static: System.Void System.IntPtr))
  (define-method-port
    gda-data-model-get-n-rows
    System.Data.OleDb.libgda
    gda_data_model_get_n_rows
    (static: System.Int32 System.IntPtr))
  (define-method-port
    gda-field-attributes-get-unique-key?
    System.Data.OleDb.libgda
    gda_field_attributes_get_unique_key
    (static: System.Boolean System.IntPtr))
  (define-method-port
    gda-transaction-get-isolation-level
    System.Data.OleDb.libgda
    gda_transaction_get_isolation_level
    (static: System.Data.OleDb.GdaTransactionIsolation System.IntPtr))
  (define-method-port
    gda-value-get-date
    System.Data.OleDb.libgda
    gda_value_get_date
    (static: System.IntPtr System.IntPtr))
  (define-method-port
    gda-connection-get-cnc-string
    System.Data.OleDb.libgda
    gda_connection_get_cnc_string
    (static: System.String System.IntPtr))
  (define-method-port
    gda-field-attributes-get-scale
    System.Data.OleDb.libgda
    gda_field_attributes_get_scale
    (static: System.Int64 System.IntPtr))
  (define-method-port
    gda-value-get-bigint
    System.Data.OleDb.libgda
    gda_value_get_bigint
    (static: System.Int64 System.IntPtr))
  (define-method-port
    gda-error-get-sqlstate
    System.Data.OleDb.libgda
    gda_error_get_sqlstate
    (static: System.String System.IntPtr))
  (define-method-port
    gda-connection-execute-non-query
    System.Data.OleDb.libgda
    gda_connection_execute_non_query
    (static: System.Int32 System.IntPtr System.IntPtr System.IntPtr))
  (define-method-port
    gda-value-get-smallint
    System.Data.OleDb.libgda
    gda_value_get_smallint
    (static: System.Int32 System.IntPtr))
  (define-method-port
    gda-connection-get-username
    System.Data.OleDb.libgda
    gda_connection_get_username
    (static: System.String System.IntPtr))
  (define-method-port
    gda-parameter-list-new
    System.Data.OleDb.libgda
    gda_parameter_list_new
    (static: System.IntPtr))
  (define-method-port
    gda-field-attributes-get-primary-key?
    System.Data.OleDb.libgda
    gda_field_attributes_get_primary_key
    (static: System.Boolean System.IntPtr))
  (define-method-port
    gda-connection-close?
    System.Data.OleDb.libgda
    gda_connection_close
    (static: System.Boolean System.IntPtr))
  (define-method-port
    gda-transaction-set-isolation-level
    System.Data.OleDb.libgda
    gda_transaction_set_isolation_level
    (static:
      System.Void
      System.IntPtr
      System.Data.OleDb.GdaTransactionIsolation))
  (define-method-port
    gda-data-model-get-value-at
    System.Data.OleDb.libgda
    gda_data_model_get_value_at
    (static: System.IntPtr System.IntPtr System.Int32 System.Int32))
  (define-method-port
    gda-transaction-set-name
    System.Data.OleDb.libgda
    gda_transaction_set_name
    (static: System.IntPtr System.IntPtr System.String))
  (define-method-port
    gda-data-model-get-n-columns
    System.Data.OleDb.libgda
    gda_data_model_get_n_columns
    (static: System.Int32 System.IntPtr))
  (define-method-port
    gda-connection-change-database?
    System.Data.OleDb.libgda
    gda_connection_change_database
    (static: System.Boolean System.IntPtr System.String))
  (define-method-port
    gda-client-open-connection
    System.Data.OleDb.libgda
    gda_client_open_connection
    (static:
      System.IntPtr
      System.IntPtr
      System.String
      System.String
      System.String
      System.Data.OleDb.GdaConnectionOptions))
  (define-field-port
    gda-client
    #f
    #f
    (static: property:)
    System.Data.OleDb.libgda
    GdaClient
    System.IntPtr))
