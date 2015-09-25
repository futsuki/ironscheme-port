(library (system net configuration connection-management-element)
  (export new
          is?
          connection-management-element?
          address-get
          address-set!
          address-update!
          max-connection-get
          max-connection-set!
          max-connection-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.ConnectionManagementElement
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.ConnectionManagementElement a))
  (define (connection-management-element? a)
    (clr-is System.Net.Configuration.ConnectionManagementElement a))
  (define-field-port
    address-get
    address-set!
    address-update!
    (property:)
    System.Net.Configuration.ConnectionManagementElement
    Address
    System.String)
  (define-field-port
    max-connection-get
    max-connection-set!
    max-connection-update!
    (property:)
    System.Net.Configuration.ConnectionManagementElement
    MaxConnection
    System.Int32))
