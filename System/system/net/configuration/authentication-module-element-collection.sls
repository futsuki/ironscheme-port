(library (system
          net
          configuration
          authentication-module-element-collection)
  (export new
          is?
          authentication-module-element-collection?
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
             System.Net.Configuration.AuthenticationModuleElementCollection
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Net.Configuration.AuthenticationModuleElementCollection
      a))
  (define (authentication-module-element-collection? a)
    (clr-is
      System.Net.Configuration.AuthenticationModuleElementCollection
      a))
  (define-method-port
    remove-at
    System.Net.Configuration.AuthenticationModuleElementCollection
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    index-of
    System.Net.Configuration.AuthenticationModuleElementCollection
    IndexOf
    (System.Int32 System.Net.Configuration.AuthenticationModuleElement))
  (define-method-port
    add
    System.Net.Configuration.AuthenticationModuleElementCollection
    Add
    (System.Void System.Net.Configuration.AuthenticationModuleElement))
  (define-method-port
    remove
    System.Net.Configuration.AuthenticationModuleElementCollection
    Remove
    (System.Void System.String)
    (System.Void System.Net.Configuration.AuthenticationModuleElement))
  (define-method-port
    clear
    System.Net.Configuration.AuthenticationModuleElementCollection
    Clear
    (System.Void))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Net.Configuration.AuthenticationModuleElementCollection
    Item
    System.Net.Configuration.AuthenticationModuleElement)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Net.Configuration.AuthenticationModuleElementCollection
    Item
    System.Net.Configuration.AuthenticationModuleElement))
