(library (system net configuration connection-management-handler)
  (export new is? connection-management-handler? create)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.ConnectionManagementHandler
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.ConnectionManagementHandler a))
  (define (connection-management-handler? a)
    (clr-is System.Net.Configuration.ConnectionManagementHandler a))
  (define-method-port
    create
    System.Net.Configuration.ConnectionManagementHandler
    Create
    (System.Object System.Object System.Object System.Xml.XmlNode)))
