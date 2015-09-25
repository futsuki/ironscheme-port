(library (system reflection invalid-filter-criteria-exception)
  (export new is? invalid-filter-criteria-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.InvalidFilterCriteriaException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Reflection.InvalidFilterCriteriaException a))
  (define (invalid-filter-criteria-exception? a)
    (clr-is System.Reflection.InvalidFilterCriteriaException a)))
