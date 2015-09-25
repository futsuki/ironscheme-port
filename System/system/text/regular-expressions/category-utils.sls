(library (system text regular-expressions category-utils)
  (export new is? category-utils? is-category? category-from-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.CategoryUtils
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.CategoryUtils a))
  (define (category-utils? a)
    (clr-is System.Text.RegularExpressions.CategoryUtils a))
  (define-method-port
    is-category?
    System.Text.RegularExpressions.CategoryUtils
    IsCategory
    (static:
      System.Boolean
      System.Text.RegularExpressions.Category
      System.Char))
  (define-method-port
    category-from-name
    System.Text.RegularExpressions.CategoryUtils
    CategoryFromName
    (static: System.Text.RegularExpressions.Category System.String)))
