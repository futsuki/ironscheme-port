(library (system collections bit-array)
  (export new
          is?
          bit-array?
          or
          set
          get?
          xor
          get-enumerator
          not
          set-all
          and
          clone
          copy-to
          count
          is-read-only?
          is-synchronized?
          item?-get
          item?-set!
          item?-update!
          length-get
          length-set!
          length-update!
          sync-root)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Collections.BitArray a ...)))))
  (define (is? a) (clr-is System.Collections.BitArray a))
  (define (bit-array? a) (clr-is System.Collections.BitArray a))
  (define-method-port
    or
    System.Collections.BitArray
    Or
    (System.Collections.BitArray System.Collections.BitArray))
  (define-method-port
    set
    System.Collections.BitArray
    Set
    (System.Void System.Int32 System.Boolean))
  (define-method-port
    get?
    System.Collections.BitArray
    Get
    (System.Boolean System.Int32))
  (define-method-port
    xor
    System.Collections.BitArray
    Xor
    (System.Collections.BitArray System.Collections.BitArray))
  (define-method-port
    get-enumerator
    System.Collections.BitArray
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    not
    System.Collections.BitArray
    Not
    (System.Collections.BitArray))
  (define-method-port
    set-all
    System.Collections.BitArray
    SetAll
    (System.Void System.Boolean))
  (define-method-port
    and
    System.Collections.BitArray
    And
    (System.Collections.BitArray System.Collections.BitArray))
  (define-method-port
    clone
    System.Collections.BitArray
    Clone
    (System.Object))
  (define-method-port
    copy-to
    System.Collections.BitArray
    CopyTo
    (System.Void System.Array System.Int32))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Collections.BitArray
    Count
    System.Int32)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Collections.BitArray
    IsReadOnly
    System.Boolean)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Collections.BitArray
    IsSynchronized
    System.Boolean)
  (define-field-port
    item?-get
    item?-set!
    item?-update!
    (property:)
    System.Collections.BitArray
    Item
    System.Boolean)
  (define-field-port
    length-get
    length-set!
    length-update!
    (property:)
    System.Collections.BitArray
    Length
    System.Int32)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Collections.BitArray
    SyncRoot
    System.Object))
