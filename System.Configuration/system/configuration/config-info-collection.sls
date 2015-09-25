(library (system configuration config-info-collection)
  (export new
          is?
          config-info-collection?
          remove-at
          add
          remove
          clear
          get-key
          all-keys
          item-get
          item-set!
          item-update!
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.ConfigInfoCollection a ...)))))
  (define (is? a) (clr-is System.Configuration.ConfigInfoCollection a))
  (define (config-info-collection? a)
    (clr-is System.Configuration.ConfigInfoCollection a))
  (define-method-port
    remove-at
    System.Configuration.ConfigInfoCollection
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    add
    System.Configuration.ConfigInfoCollection
    Add
    (System.Void System.String System.Configuration.ConfigInfo))
  (define-method-port
    remove
    System.Configuration.ConfigInfoCollection
    Remove
    (System.Void System.String))
  (define-method-port
    clear
    System.Configuration.ConfigInfoCollection
    Clear
    (System.Void))
  (define-method-port
    get-key
    System.Configuration.ConfigInfoCollection
    GetKey
    (System.String System.Int32))
  (define-field-port
    all-keys
    #f
    #f
    (property:)
    System.Configuration.ConfigInfoCollection
    AllKeys
    System.Collections.ICollection)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Configuration.ConfigInfoCollection
    Item
    System.Configuration.ConfigInfo)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Configuration.ConfigInfoCollection
    Item
    System.Configuration.ConfigInfo))
