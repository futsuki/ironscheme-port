(library (system runtime remoting messaging method-dictionary)
  (export new
          is?
          method-dictionary?
          copy-to
          get-enumerator
          add
          contains?
          remove
          get-internal-properties
          clear
          method-keys-get
          method-keys-set!
          method-keys-update!
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
             System.Runtime.Remoting.Messaging.MethodDictionary
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Messaging.MethodDictionary a))
  (define (method-dictionary? a)
    (clr-is System.Runtime.Remoting.Messaging.MethodDictionary a))
  (define-method-port
    copy-to
    System.Runtime.Remoting.Messaging.MethodDictionary
    CopyTo
    (System.Void System.Array System.Int32))
  (define-method-port
    get-enumerator
    System.Runtime.Remoting.Messaging.MethodDictionary
    GetEnumerator
    (System.Collections.IDictionaryEnumerator))
  (define-method-port
    add
    System.Runtime.Remoting.Messaging.MethodDictionary
    Add
    (System.Void System.Object System.Object))
  (define-method-port
    contains?
    System.Runtime.Remoting.Messaging.MethodDictionary
    Contains
    (System.Boolean System.Object))
  (define-method-port
    remove
    System.Runtime.Remoting.Messaging.MethodDictionary
    Remove
    (System.Void System.Object))
  (define-method-port
    get-internal-properties
    System.Runtime.Remoting.Messaging.MethodDictionary
    GetInternalProperties
    (System.Collections.IDictionary))
  (define-method-port
    clear
    System.Runtime.Remoting.Messaging.MethodDictionary
    Clear
    (System.Void))
  (define-field-port
    method-keys-get
    method-keys-set!
    method-keys-update!
    (property:)
    System.Runtime.Remoting.Messaging.MethodDictionary
    MethodKeys
    System.String[])
  (define-field-port
    is-fixed-size?
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MethodDictionary
    IsFixedSize
    System.Boolean)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MethodDictionary
    IsReadOnly
    System.Boolean)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Runtime.Remoting.Messaging.MethodDictionary
    Item
    System.Object)
  (define-field-port
    keys
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MethodDictionary
    Keys
    System.Collections.ICollection)
  (define-field-port
    values
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MethodDictionary
    Values
    System.Collections.ICollection)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MethodDictionary
    Count
    System.Int32)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MethodDictionary
    IsSynchronized
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Runtime.Remoting.Messaging.MethodDictionary
    SyncRoot
    System.Object))
