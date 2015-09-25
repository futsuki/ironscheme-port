(library (system net configuration connection-management-data)
  (export new
          is?
          connection-management-data?
          get-max-connections
          add
          remove
          clear
          data)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.ConnectionManagementData
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.ConnectionManagementData a))
  (define (connection-management-data? a)
    (clr-is System.Net.Configuration.ConnectionManagementData a))
  (define-method-port
    get-max-connections
    System.Net.Configuration.ConnectionManagementData
    GetMaxConnections
    (System.UInt32 System.String))
  (define-method-port
    add
    System.Net.Configuration.ConnectionManagementData
    Add
    (System.Void System.String System.Int32)
    (System.Void System.String System.String))
  (define-method-port
    remove
    System.Net.Configuration.ConnectionManagementData
    Remove
    (System.Void System.String))
  (define-method-port
    clear
    System.Net.Configuration.ConnectionManagementData
    Clear
    (System.Void))
  (define-field-port
    data
    #f
    #f
    (property:)
    System.Net.Configuration.ConnectionManagementData
    Data
    System.Collections.Hashtable))
