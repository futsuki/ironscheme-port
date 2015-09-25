(library (system collections specialized list-dictionary)
  (export new
          is?
          list-dictionary?
          get-enumerator
          add
          contains?
          remove
          clear
          copy-to
          count
          is-synchronized?
          sync-root
          is-fixed-size?
          is-read-only?
          item-get
          item-set!
          item-update!
          keys
          values)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Collections.Specialized.ListDictionary
             a
             ...)))))
  (define (is? a)
    (clr-is System.Collections.Specialized.ListDictionary a))
  (define (list-dictionary? a)
    (clr-is System.Collections.Specialized.ListDictionary a))
  (define-method-port
    get-enumerator
    System.Collections.Specialized.ListDictionary
    GetEnumerator
    (System.Collections.IDictionaryEnumerator))
  (define-method-port
    add
    System.Collections.Specialized.ListDictionary
    Add
    (System.Void System.Object System.Object))
  (define-method-port
    contains?
    System.Collections.Specialized.ListDictionary
    Contains
    (System.Boolean System.Object))
  (define-method-port
    remove
    System.Collections.Specialized.ListDictionary
    Remove
    (System.Void System.Object))
  (define-method-port
    clear
    System.Collections.Specialized.ListDictionary
    Clear
    (System.Void))
  (define-method-port
    copy-to
    System.Collections.Specialized.ListDictionary
    CopyTo
    (System.Void System.Array System.Int32))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Collections.Specialized.ListDictionary
    Count
    System.Int32)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Collections.Specialized.ListDictionary
    IsSynchronized
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Collections.Specialized.ListDictionary
    SyncRoot
    System.Object)
  (define-field-port
    is-fixed-size?
    #f
    #f
    (property:)
    System.Collections.Specialized.ListDictionary
    IsFixedSize
    System.Boolean)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Collections.Specialized.ListDictionary
    IsReadOnly
    System.Boolean)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Collections.Specialized.ListDictionary
    Item
    System.Object)
  (define-field-port
    keys
    #f
    #f
    (property:)
    System.Collections.Specialized.ListDictionary
    Keys
    System.Collections.ICollection)
  (define-field-port
    values
    #f
    #f
    (property:)
    System.Collections.Specialized.ListDictionary
    Values
    System.Collections.ICollection))
