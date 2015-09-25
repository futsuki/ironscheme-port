(library (system configuration connection-strings-section)
  (export new is? connection-strings-section? connection-strings)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ConnectionStringsSection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.ConnectionStringsSection a))
  (define (connection-strings-section? a)
    (clr-is System.Configuration.ConnectionStringsSection a))
  (define-field-port
    connection-strings
    #f
    #f
    (property:)
    System.Configuration.ConnectionStringsSection
    ConnectionStrings
    System.Configuration.ConnectionStringSettingsCollection))
