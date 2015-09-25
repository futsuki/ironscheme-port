(library (system collections hashtable)
  (export new
          is?
          hashtable?
          contains-key?
          synchronized
          contains-value?
          get-object-data
          get-enumerator
          add
          contains?
          remove
          clear
          clone
          copy-to
          on-deserialization
          count
          is-synchronized?
          sync-root
          is-fixed-size?
          is-read-only?
          keys
          values
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Collections.Hashtable a ...)))))
  (define (is? a) (clr-is System.Collections.Hashtable a))
  (define (hashtable? a) (clr-is System.Collections.Hashtable a))
  (define-method-port
    contains-key?
    System.Collections.Hashtable
    ContainsKey
    (System.Boolean System.Object))
  (define-method-port
    synchronized
    System.Collections.Hashtable
    Synchronized
    (static: System.Collections.Hashtable System.Collections.Hashtable))
  (define-method-port
    contains-value?
    System.Collections.Hashtable
    ContainsValue
    (System.Boolean System.Object))
  (define-method-port
    get-object-data
    System.Collections.Hashtable
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-enumerator
    System.Collections.Hashtable
    GetEnumerator
    (System.Collections.IDictionaryEnumerator))
  (define-method-port
    add
    System.Collections.Hashtable
    Add
    (System.Void System.Object System.Object))
  (define-method-port
    contains?
    System.Collections.Hashtable
    Contains
    (System.Boolean System.Object))
  (define-method-port
    remove
    System.Collections.Hashtable
    Remove
    (System.Void System.Object))
  (define-method-port
    clear
    System.Collections.Hashtable
    Clear
    (System.Void))
  (define-method-port
    clone
    System.Collections.Hashtable
    Clone
    (System.Object))
  (define-method-port
    copy-to
    System.Collections.Hashtable
    CopyTo
    (System.Void System.Array System.Int32))
  (define-method-port
    on-deserialization
    System.Collections.Hashtable
    OnDeserialization
    (System.Void System.Object))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Collections.Hashtable
    Count
    System.Int32)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Collections.Hashtable
    IsSynchronized
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Collections.Hashtable
    SyncRoot
    System.Object)
  (define-field-port
    is-fixed-size?
    #f
    #f
    (property:)
    System.Collections.Hashtable
    IsFixedSize
    System.Boolean)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Collections.Hashtable
    IsReadOnly
    System.Boolean)
  (define-field-port
    keys
    #f
    #f
    (property:)
    System.Collections.Hashtable
    Keys
    System.Collections.ICollection)
  (define-field-port
    values
    #f
    #f
    (property:)
    System.Collections.Hashtable
    Values
    System.Collections.ICollection)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Collections.Hashtable
    Item
    System.Object))
