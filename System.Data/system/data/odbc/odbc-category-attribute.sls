(library (system data odbc odbc-category-attribute)
  (export new is? odbc-category-attribute? category)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.Odbc.OdbcCategoryAttribute a ...)))))
  (define (is? a) (clr-is System.Data.Odbc.OdbcCategoryAttribute a))
  (define (odbc-category-attribute? a)
    (clr-is System.Data.Odbc.OdbcCategoryAttribute a))
  (define-field-port
    category
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcCategoryAttribute
    Category
    System.String))
