(library (system collections specialized process-string-dictionary)
  (export new
          is?
          process-string-dictionary?
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
             System.Collections.Specialized.ProcessStringDictionary
             a
             ...)))))
  (define (is? a)
    (clr-is System.Collections.Specialized.ProcessStringDictionary a))
  (define (process-string-dictionary? a)
    (clr-is System.Collections.Specialized.ProcessStringDictionary a))
  (define-method-port
    copy-to
    System.Collections.Specialized.ProcessStringDictionary
    CopyTo
    (System.Void System.Array System.Int32))
  (define-method-port
    contains-key?
    System.Collections.Specialized.ProcessStringDictionary
    ContainsKey
    (System.Boolean System.String))
  (define-method-port
    contains-value?
    System.Collections.Specialized.ProcessStringDictionary
    ContainsValue
    (System.Boolean System.String))
  (define-method-port
    get-enumerator
    System.Collections.Specialized.ProcessStringDictionary
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add
    System.Collections.Specialized.ProcessStringDictionary
    Add
    (System.Void System.String System.String))
  (define-method-port
    remove
    System.Collections.Specialized.ProcessStringDictionary
    Remove
    (System.Void System.String))
  (define-method-port
    clear
    System.Collections.Specialized.ProcessStringDictionary
    Clear
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Collections.Specialized.ProcessStringDictionary
    Count
    System.Int32)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Collections.Specialized.ProcessStringDictionary
    IsSynchronized
    System.Boolean)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Collections.Specialized.ProcessStringDictionary
    Item
    System.String)
  (define-field-port
    keys
    #f
    #f
    (property:)
    System.Collections.Specialized.ProcessStringDictionary
    Keys
    System.Collections.ICollection)
  (define-field-port
    values
    #f
    #f
    (property:)
    System.Collections.Specialized.ProcessStringDictionary
    Values
    System.Collections.ICollection)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Collections.Specialized.ProcessStringDictionary
    SyncRoot
    System.Object))
