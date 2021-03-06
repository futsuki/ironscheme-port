(library (system data data-category-attribute)
  (export new is? data-category-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.DataCategoryAttribute a ...)))))
  (define (is? a) (clr-is System.Data.DataCategoryAttribute a))
  (define (data-category-attribute? a)
    (clr-is System.Data.DataCategoryAttribute a)))
