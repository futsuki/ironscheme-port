(library (system collections specialized string-dictionary)
  (export new
          is?
          string-dictionary?
          copy-to
          contains-key?
          contains-value?
          get-enumerator
          add
          remove
          clear
          count
          is-synchronized?
          item-get
          item-set!
          item-update!
          keys
          values
          sync-root)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Collections.Specialized.StringDictionary
             a
             ...)))))
  (define (is? a)
    (clr-is System.Collections.Specialized.StringDictionary a))
  (define (string-dictionary? a)
    (clr-is System.Collections.Specialized.StringDictionary a))
  (define-method-port
    copy-to
    System.Collections.Specialized.StringDictionary
    CopyTo
    (System.Void System.Array System.Int32))
  (define-method-port
    contains-key?
    System.Collections.Specialized.StringDictionary
    ContainsKey
    (System.Boolean System.String))
  (define-method-port
    contains-value?
    System.Collections.Specialized.StringDictionary
    ContainsValue
    (System.Boolean System.String))
  (define-method-port
    get-enumerator
    System.Collections.Specialized.StringDictionary
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add
    System.Collections.Specialized.StringDictionary
    Add
    (System.Void System.String System.String))
  (define-method-port
    remove
    System.Collections.Specialized.StringDictionary
    Remove
    (System.Void System.String))
  (define-method-port
    clear
    System.Collections.Specialized.StringDictionary
    Clear
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Collections.Specialized.StringDictionary
    Count
    System.Int32)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Collections.Specialized.StringDictionary
    IsSynchronized
    System.Boolean)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Collections.Specialized.StringDictionary
    Item
    System.String)
  (define-field-port
    keys
    #f
    #f
    (property:)
    System.Collections.Specialized.StringDictionary
    Keys
    System.Collections.ICollection)
  (define-field-port
    values
    #f
    #f
    (property:)
    System.Collections.Specialized.StringDictionary
    Values
    System.Collections.ICollection)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Collections.Specialized.StringDictionary
    SyncRoot
    System.Object))
