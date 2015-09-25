(library (system configuration configuration-property-collection)
  (export new
          is?
          configuration-property-collection?
          get-enumerator
          add
          contains?
          remove?
          clear
          copy-to
          count
          item
          is-synchronized?
          sync-root)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ConfigurationPropertyCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.ConfigurationPropertyCollection a))
  (define (configuration-property-collection? a)
    (clr-is System.Configuration.ConfigurationPropertyCollection a))
  (define-method-port
    get-enumerator
    System.Configuration.ConfigurationPropertyCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add
    System.Configuration.ConfigurationPropertyCollection
    Add
    (System.Void System.Configuration.ConfigurationProperty))
  (define-method-port
    contains?
    System.Configuration.ConfigurationPropertyCollection
    Contains
    (System.Boolean System.String))
  (define-method-port
    remove?
    System.Configuration.ConfigurationPropertyCollection
    Remove
    (System.Boolean System.String))
  (define-method-port
    clear
    System.Configuration.ConfigurationPropertyCollection
    Clear
    (System.Void))
  (define-method-port
    copy-to
    System.Configuration.ConfigurationPropertyCollection
    CopyTo
    (System.Void
      System.Configuration.ConfigurationProperty[]
      System.Int32))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Configuration.ConfigurationPropertyCollection
    Count
    System.Int32)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Configuration.ConfigurationPropertyCollection
    Item
    System.Configuration.ConfigurationProperty)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Configuration.ConfigurationPropertyCollection
    IsSynchronized
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Configuration.ConfigurationPropertyCollection
    SyncRoot
    System.Object))
