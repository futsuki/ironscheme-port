(library (system runtime remoting channels aggregate-dictionary)
  (export new
          is?
          aggregate-dictionary?
          copy-to
          get-enumerator
          add
          contains?
          remove
          clear
          is-fixed-size?
          is-read-only?
          item-get
          item-set!
          item-update!
          keys
          values
          count
          is-synchronized?
          sync-root)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Channels.AggregateDictionary
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Channels.AggregateDictionary a))
  (define (aggregate-dictionary? a)
    (clr-is System.Runtime.Remoting.Channels.AggregateDictionary a))
  (define-method-port
    copy-to
    System.Runtime.Remoting.Channels.AggregateDictionary
    CopyTo
    (System.Void System.Array System.Int32))
  (define-method-port
    get-enumerator
    System.Runtime.Remoting.Channels.AggregateDictionary
    GetEnumerator
    (System.Collections.IDictionaryEnumerator))
  (define-method-port
    add
    System.Runtime.Remoting.Channels.AggregateDictionary
    Add
    (System.Void System.Object System.Object))
  (define-method-port
    contains?
    System.Runtime.Remoting.Channels.AggregateDictionary
    Contains
    (System.Boolean System.Object))
  (define-method-port
    remove
    System.Runtime.Remoting.Channels.AggregateDictionary
    Remove
    (System.Void System.Object))
  (define-method-port
    clear
    System.Runtime.Remoting.Channels.AggregateDictionary
    Clear
    (System.Void))
  (define-field-port
    is-fixed-size?
    #f
    #f
    (property:)
    System.Runtime.Remoting.Channels.AggregateDictionary
    IsFixedSize
    System.Boolean)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Runtime.Remoting.Channels.AggregateDictionary
    IsReadOnly
    System.Boolean)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Runtime.Remoting.Channels.AggregateDictionary
    Item
    System.Object)
  (define-field-port
    keys
    #f
    #f
    (property:)
    System.Runtime.Remoting.Channels.AggregateDictionary
    Keys
    System.Collections.ICollection)
  (define-field-port
    values
    #f
    #f
    (property:)
    System.Runtime.Remoting.Channels.AggregateDictionary
    Values
    System.Collections.ICollection)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Runtime.Remoting.Channels.AggregateDictionary
    Count
    System.Int32)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Runtime.Remoting.Channels.AggregateDictionary
    IsSynchronized
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Runtime.Remoting.Channels.AggregateDictionary
    SyncRoot
    System.Object))
