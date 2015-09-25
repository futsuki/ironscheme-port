(library (system
          net
          configuration
          web-request-module-element-collection)
  (export new
          is?
          web-request-module-element-collection?
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
             System.Net.Configuration.WebRequestModuleElementCollection
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Net.Configuration.WebRequestModuleElementCollection
      a))
  (define (web-request-module-element-collection? a)
    (clr-is
      System.Net.Configuration.WebRequestModuleElementCollection
      a))
  (define-method-port
    remove-at
    System.Net.Configuration.WebRequestModuleElementCollection
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    index-of
    System.Net.Configuration.WebRequestModuleElementCollection
    IndexOf
    (System.Int32 System.Net.Configuration.WebRequestModuleElement))
  (define-method-port
    add
    System.Net.Configuration.WebRequestModuleElementCollection
    Add
    (System.Void System.Net.Configuration.WebRequestModuleElement))
  (define-method-port
    remove
    System.Net.Configuration.WebRequestModuleElementCollection
    Remove
    (System.Void System.String)
    (System.Void System.Net.Configuration.WebRequestModuleElement))
  (define-method-port
    clear
    System.Net.Configuration.WebRequestModuleElementCollection
    Clear
    (System.Void))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Net.Configuration.WebRequestModuleElementCollection
    Item
    System.Net.Configuration.WebRequestModuleElement)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Net.Configuration.WebRequestModuleElementCollection
    Item
    System.Net.Configuration.WebRequestModuleElement))
