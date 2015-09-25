(library (system net configuration bypass-element-collection)
  (export new
          is?
          bypass-element-collection?
          remove-at
          index-of
          add
          remove
          clear
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
         #'(clr-new
             System.Net.Configuration.BypassElementCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.BypassElementCollection a))
  (define (bypass-element-collection? a)
    (clr-is System.Net.Configuration.BypassElementCollection a))
  (define-method-port
    remove-at
    System.Net.Configuration.BypassElementCollection
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    index-of
    System.Net.Configuration.BypassElementCollection
    IndexOf
    (System.Int32 System.Net.Configuration.BypassElement))
  (define-method-port
    add
    System.Net.Configuration.BypassElementCollection
    Add
    (System.Void System.Net.Configuration.BypassElement))
  (define-method-port
    remove
    System.Net.Configuration.BypassElementCollection
    Remove
    (System.Void System.String)
    (System.Void System.Net.Configuration.BypassElement))
  (define-method-port
    clear
    System.Net.Configuration.BypassElementCollection
    Clear
    (System.Void))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Net.Configuration.BypassElementCollection
    Item
    System.Net.Configuration.BypassElement)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Net.Configuration.BypassElementCollection
    Item
    System.Net.Configuration.BypassElement))
