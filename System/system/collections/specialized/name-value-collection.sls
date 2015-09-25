(library (system collections specialized name-value-collection)
  (export new
          is?
          name-value-collection?
          copy-to
          set
          get
          get-values
          add
          remove
          has-keys?
          clear
          get-key
          all-keys
          item
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Collections.Specialized.NameValueCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Collections.Specialized.NameValueCollection a))
  (define (name-value-collection? a)
    (clr-is System.Collections.Specialized.NameValueCollection a))
  (define-method-port
    copy-to
    System.Collections.Specialized.NameValueCollection
    CopyTo
    (System.Void System.Array System.Int32))
  (define-method-port
    set
    System.Collections.Specialized.NameValueCollection
    Set
    (System.Void System.String System.String))
  (define-method-port
    get
    System.Collections.Specialized.NameValueCollection
    Get
    (System.String System.String)
    (System.String System.Int32))
  (define-method-port
    get-values
    System.Collections.Specialized.NameValueCollection
    GetValues
    (System.String[] System.String)
    (System.String[] System.Int32))
  (define-method-port
    add
    System.Collections.Specialized.NameValueCollection
    Add
    (System.Void System.String System.String)
    (System.Void System.Collections.Specialized.NameValueCollection))
  (define-method-port
    remove
    System.Collections.Specialized.NameValueCollection
    Remove
    (System.Void System.String))
  (define-method-port
    has-keys?
    System.Collections.Specialized.NameValueCollection
    HasKeys
    (System.Boolean))
  (define-method-port
    clear
    System.Collections.Specialized.NameValueCollection
    Clear
    (System.Void))
  (define-method-port
    get-key
    System.Collections.Specialized.NameValueCollection
    GetKey
    (System.String System.Int32))
  (define-field-port
    all-keys
    #f
    #f
    (property:)
    System.Collections.Specialized.NameValueCollection
    AllKeys
    System.String[])
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Collections.Specialized.NameValueCollection
    Item
    System.String)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Collections.Specialized.NameValueCollection
    Item
    System.String))
