(library (system diagnostics instance-data-collection-collection)
  (export new
          is?
          instance-data-collection-collection?
          contains?
          copy-to
          item
          keys
          values)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.InstanceDataCollectionCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.InstanceDataCollectionCollection a))
  (define (instance-data-collection-collection? a)
    (clr-is System.Diagnostics.InstanceDataCollectionCollection a))
  (define-method-port
    contains?
    System.Diagnostics.InstanceDataCollectionCollection
    Contains
    (System.Boolean System.String))
  (define-method-port
    copy-to
    System.Diagnostics.InstanceDataCollectionCollection
    CopyTo
    (System.Void
      System.Diagnostics.InstanceDataCollection[]
      System.Int32))
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Diagnostics.InstanceDataCollectionCollection
    Item
    System.Diagnostics.InstanceDataCollection)
  (define-field-port
    keys
    #f
    #f
    (property:)
    System.Diagnostics.InstanceDataCollectionCollection
    Keys
    System.Collections.ICollection)
  (define-field-port
    values
    #f
    #f
    (property:)
    System.Diagnostics.InstanceDataCollectionCollection
    Values
    System.Collections.ICollection))
