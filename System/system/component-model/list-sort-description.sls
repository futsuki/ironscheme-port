(library (system component-model list-sort-description)
  (export new
          is?
          list-sort-description?
          property-descriptor-get
          property-descriptor-set!
          property-descriptor-update!
          sort-direction-get
          sort-direction-set!
          sort-direction-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.ListSortDescription a ...)))))
  (define (is? a) (clr-is System.ComponentModel.ListSortDescription a))
  (define (list-sort-description? a)
    (clr-is System.ComponentModel.ListSortDescription a))
  (define-field-port
    property-descriptor-get
    property-descriptor-set!
    property-descriptor-update!
    (property:)
    System.ComponentModel.ListSortDescription
    PropertyDescriptor
    System.ComponentModel.PropertyDescriptor)
  (define-field-port
    sort-direction-get
    sort-direction-set!
    sort-direction-update!
    (property:)
    System.ComponentModel.ListSortDescription
    SortDirection
    System.ComponentModel.ListSortDirection))
