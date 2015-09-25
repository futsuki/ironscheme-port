(library (system
          net
          configuration
          connection-management-element-collection)
  (export new
          is?
          connection-management-element-collection?
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
             System.Net.Configuration.ConnectionManagementElementCollection
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Net.Configuration.ConnectionManagementElementCollection
      a))
  (define (connection-management-element-collection? a)
    (clr-is
      System.Net.Configuration.ConnectionManagementElementCollection
      a))
  (define-method-port
    remove-at
    System.Net.Configuration.ConnectionManagementElementCollection
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    index-of
    System.Net.Configuration.ConnectionManagementElementCollection
    IndexOf
    (System.Int32 System.Net.Configuration.ConnectionManagementElement))
  (define-method-port
    add
    System.Net.Configuration.ConnectionManagementElementCollection
    Add
    (System.Void System.Net.Configuration.ConnectionManagementElement))
  (define-method-port
    remove
    System.Net.Configuration.ConnectionManagementElementCollection
    Remove
    (System.Void System.String)
    (System.Void System.Net.Configuration.ConnectionManagementElement))
  (define-method-port
    clear
    System.Net.Configuration.ConnectionManagementElementCollection
    Clear
    (System.Void))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Net.Configuration.ConnectionManagementElementCollection
    Item
    System.Net.Configuration.ConnectionManagementElement)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Net.Configuration.ConnectionManagementElementCollection
    Item
    System.Net.Configuration.ConnectionManagementElement))
