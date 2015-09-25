(library (system diagnostics instance-data-collection)
  (export new
          is?
          instance-data-collection?
          contains?
          copy-to
          counter-name
          item
          keys
          values)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Diagnostics.InstanceDataCollection a ...)))))
  (define (is? a) (clr-is System.Diagnostics.InstanceDataCollection a))
  (define (instance-data-collection? a)
    (clr-is System.Diagnostics.InstanceDataCollection a))
  (define-method-port
    contains?
    System.Diagnostics.InstanceDataCollection
    Contains
    (System.Boolean System.String))
  (define-method-port
    copy-to
    System.Diagnostics.InstanceDataCollection
    CopyTo
    (System.Void System.Diagnostics.InstanceData[] System.Int32))
  (define-field-port
    counter-name
    #f
    #f
    (property:)
    System.Diagnostics.InstanceDataCollection
    CounterName
    System.String)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Diagnostics.InstanceDataCollection
    Item
    System.Diagnostics.InstanceData)
  (define-field-port
    keys
    #f
    #f
    (property:)
    System.Diagnostics.InstanceDataCollection
    Keys
    System.Collections.ICollection)
  (define-field-port
    values
    #f
    #f
    (property:)
    System.Diagnostics.InstanceDataCollection
    Values
    System.Collections.ICollection))
