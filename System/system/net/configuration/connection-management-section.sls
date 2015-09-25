(library (system net configuration connection-management-section)
  (export new is? connection-management-section? connection-management)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.ConnectionManagementSection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.ConnectionManagementSection a))
  (define (connection-management-section? a)
    (clr-is System.Net.Configuration.ConnectionManagementSection a))
  (define-field-port
    connection-management
    #f
    #f
    (property:)
    System.Net.Configuration.ConnectionManagementSection
    ConnectionManagement
    System.Net.Configuration.ConnectionManagementElementCollection))
