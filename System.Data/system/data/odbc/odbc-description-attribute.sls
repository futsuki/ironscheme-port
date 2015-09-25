(library (system data odbc odbc-description-attribute)
  (export new is? odbc-description-attribute? description)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.Odbc.OdbcDescriptionAttribute a ...)))))
  (define (is? a) (clr-is System.Data.Odbc.OdbcDescriptionAttribute a))
  (define (odbc-description-attribute? a)
    (clr-is System.Data.Odbc.OdbcDescriptionAttribute a))
  (define-field-port
    description
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcDescriptionAttribute
    Description
    System.String))
