(library (system collections specialized hybrid-dictionary)
  (export new
          is?
          hybrid-dictionary?
          copy-to
          get-enumerator
          add
          contains?
          remove
          clear
          count
          is-fixed-size?
          is-read-only?
          is-synchronized?
          item-get
          item-set!
          item-update!
          keys
          sync-root
          values)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Collections.Specialized.HybridDictionary
             a
             ...)))))
  (define (is? a)
    (clr-is System.Collections.Specialized.HybridDictionary a))
  (define (hybrid-dictionary? a)
    (clr-is System.Collections.Specialized.HybridDictionary a))
  (define-method-port
    copy-to
    System.Collections.Specialized.HybridDictionary
    CopyTo
    (System.Void System.Array System.Int32))
  (define-method-port
    get-enumerator
    System.Collections.Specialized.HybridDictionary
    GetEnumerator
    (System.Collections.IDictionaryEnumerator))
  (define-method-port
    add
    System.Collections.Specialized.HybridDictionary
    Add
    (System.Void System.Object System.Object))
  (define-method-port
    contains?
    System.Collections.Specialized.HybridDictionary
    Contains
    (System.Boolean System.Object))
  (define-method-port
    remove
    System.Collections.Specialized.HybridDictionary
    Remove
    (System.Void System.Object))
  (define-method-port
    clear
    System.Collections.Specialized.HybridDictionary
    Clear
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Collections.Specialized.HybridDictionary
    Count
    System.Int32)
  (define-field-port
    is-fixed-size?
    #f
    #f
    (property:)
    System.Collections.Specialized.HybridDictionary
    IsFixedSize
    System.Boolean)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Collections.Specialized.HybridDictionary
    IsReadOnly
    System.Boolean)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Collections.Specialized.HybridDictionary
    IsSynchronized
    System.Boolean)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Collections.Specialized.HybridDictionary
    Item
    System.Object)
  (define-field-port
    keys
    #f
    #f
    (property:)
    System.Collections.Specialized.HybridDictionary
    Keys
    System.Collections.ICollection)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Collections.Specialized.HybridDictionary
    SyncRoot
    System.Object)
  (define-field-port
    values
    #f
    #f
    (property:)
    System.Collections.Specialized.HybridDictionary
    Values
    System.Collections.ICollection))
