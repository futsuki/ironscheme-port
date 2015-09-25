(library (system collections specialized ordered-dictionary)
  (export new
          is?
          ordered-dictionary?
          remove-at
          as-read-only
          get-object-data
          insert
          get-enumerator
          add
          contains?
          remove
          clear
          copy-to
          count
          is-read-only?
          item-get
          item-set!
          item-update!
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
             System.Collections.Specialized.OrderedDictionary
             a
             ...)))))
  (define (is? a)
    (clr-is System.Collections.Specialized.OrderedDictionary a))
  (define (ordered-dictionary? a)
    (clr-is System.Collections.Specialized.OrderedDictionary a))
  (define-method-port
    remove-at
    System.Collections.Specialized.OrderedDictionary
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    as-read-only
    System.Collections.Specialized.OrderedDictionary
    AsReadOnly
    (System.Collections.Specialized.OrderedDictionary))
  (define-method-port
    get-object-data
    System.Collections.Specialized.OrderedDictionary
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    insert
    System.Collections.Specialized.OrderedDictionary
    Insert
    (System.Void System.Int32 System.Object System.Object))
  (define-method-port
    get-enumerator
    System.Collections.Specialized.OrderedDictionary
    GetEnumerator
    (System.Collections.IDictionaryEnumerator))
  (define-method-port
    add
    System.Collections.Specialized.OrderedDictionary
    Add
    (System.Void System.Object System.Object))
  (define-method-port
    contains?
    System.Collections.Specialized.OrderedDictionary
    Contains
    (System.Boolean System.Object))
  (define-method-port
    remove
    System.Collections.Specialized.OrderedDictionary
    Remove
    (System.Void System.Object))
  (define-method-port
    clear
    System.Collections.Specialized.OrderedDictionary
    Clear
    (System.Void))
  (define-method-port
    copy-to
    System.Collections.Specialized.OrderedDictionary
    CopyTo
    (System.Void System.Array System.Int32))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Collections.Specialized.OrderedDictionary
    Count
    System.Int32)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Collections.Specialized.OrderedDictionary
    IsReadOnly
    System.Boolean)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Collections.Specialized.OrderedDictionary
    Item
    System.Object)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Collections.Specialized.OrderedDictionary
    Item
    System.Object)
  (define-field-port
    keys
    #f
    #f
    (property:)
    System.Collections.Specialized.OrderedDictionary
    Keys
    System.Collections.ICollection)
  (define-field-port
    values
    #f
    #f
    (property:)
    System.Collections.Specialized.OrderedDictionary
    Values
    System.Collections.ICollection))
