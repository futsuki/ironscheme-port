(library (system array)
  (export is?
          array?
          reverse
          for-each
          get-upper-bound
          copy-to
          get-long-length
          last-index-of
          sort
          as-read-only
          initialize
          true-for-all?
          get-lower-bound
          index-of
          constrained-copy
          get-enumerator
          get-length
          find-last
          find-last-index
          convert-all
          clear
          set-value
          find-index
          get-value
          binary-search
          find-all
          resize
          clone
          create-instance
          copy
          exists?
          find
          length
          long-length
          rank
          is-synchronized?
          sync-root
          is-fixed-size?
          is-read-only?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Array a))
  (define (array? a) (clr-is System.Array a))
  (define-method-port
    reverse
    System.Array
    Reverse
    (static: System.Void System.Array System.Int32 System.Int32)
    (static: System.Void System.Array))
  (define-method-port for-each System.Array ForEach)
  (define-method-port
    get-upper-bound
    System.Array
    GetUpperBound
    (System.Int32 System.Int32))
  (define-method-port
    copy-to
    System.Array
    CopyTo
    (System.Void System.Array System.Int64)
    (System.Void System.Array System.Int32))
  (define-method-port
    get-long-length
    System.Array
    GetLongLength
    (System.Int64 System.Int32))
  (define-method-port
    last-index-of
    System.Array
    LastIndexOf
    (static:
      System.Int32
      System.Array
      System.Object
      System.Int32
      System.Int32)
    (static: System.Int32 System.Array System.Object System.Int32)
    (static: System.Int32 System.Array System.Object))
  (define-method-port
    sort
    System.Array
    Sort
    (static:
      System.Void
      System.Array
      System.Array
      System.Int32
      System.Int32
      System.Collections.IComparer)
    (static:
      System.Void
      System.Array
      System.Int32
      System.Int32
      System.Collections.IComparer)
    (static:
      System.Void
      System.Array
      System.Array
      System.Int32
      System.Int32)
    (static:
      System.Void
      System.Array
      System.Array
      System.Collections.IComparer)
    (static: System.Void System.Array System.Int32 System.Int32)
    (static: System.Void System.Array System.Collections.IComparer)
    (static: System.Void System.Array System.Array)
    (static: System.Void System.Array))
  (define-method-port as-read-only System.Array AsReadOnly)
  (define-method-port initialize System.Array Initialize (System.Void))
  (define-method-port true-for-all? System.Array TrueForAll)
  (define-method-port
    get-lower-bound
    System.Array
    GetLowerBound
    (System.Int32 System.Int32))
  (define-method-port
    index-of
    System.Array
    IndexOf
    (static:
      System.Int32
      System.Array
      System.Object
      System.Int32
      System.Int32)
    (static: System.Int32 System.Array System.Object System.Int32)
    (static: System.Int32 System.Array System.Object))
  (define-method-port
    constrained-copy
    System.Array
    ConstrainedCopy
    (static:
      System.Void
      System.Array
      System.Int32
      System.Array
      System.Int32
      System.Int32))
  (define-method-port
    get-enumerator
    System.Array
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    get-length
    System.Array
    GetLength
    (System.Int32 System.Int32))
  (define-method-port find-last System.Array FindLast)
  (define-method-port find-last-index System.Array FindLastIndex)
  (define-method-port convert-all System.Array ConvertAll)
  (define-method-port
    clear
    System.Array
    Clear
    (static: System.Void System.Array System.Int32 System.Int32))
  (define-method-port
    set-value
    System.Array
    SetValue
    (System.Void System.Object System.Int64[])
    (System.Void System.Object System.Int32 System.Int32 System.Int32)
    (System.Void System.Object System.Int32 System.Int32)
    (System.Void System.Object System.Int32)
    (System.Void System.Object System.Int64 System.Int64 System.Int64)
    (System.Void System.Object System.Int64 System.Int64)
    (System.Void System.Object System.Int64)
    (System.Void System.Object System.Int32[]))
  (define-method-port find-index System.Array FindIndex)
  (define-method-port
    get-value
    System.Array
    GetValue
    (System.Object System.Int64[])
    (System.Object System.Int64 System.Int64 System.Int64)
    (System.Object System.Int64 System.Int64)
    (System.Object System.Int64)
    (System.Object System.Int32 System.Int32 System.Int32)
    (System.Object System.Int32 System.Int32)
    (System.Object System.Int32)
    (System.Object System.Int32[]))
  (define-method-port
    binary-search
    System.Array
    BinarySearch
    (static:
      System.Int32
      System.Array
      System.Int32
      System.Int32
      System.Object
      System.Collections.IComparer)
    (static:
      System.Int32
      System.Array
      System.Int32
      System.Int32
      System.Object)
    (static:
      System.Int32
      System.Array
      System.Object
      System.Collections.IComparer)
    (static: System.Int32 System.Array System.Object))
  (define-method-port find-all System.Array FindAll)
  (define-method-port resize System.Array Resize)
  (define-method-port clone System.Array Clone (System.Object))
  (define-method-port
    create-instance
    System.Array
    CreateInstance
    (static: System.Array System.Type System.Int64[])
    (static: System.Array System.Type System.Int32[] System.Int32[])
    (static: System.Array System.Type System.Int32[])
    (static:
      System.Array
      System.Type
      System.Int32
      System.Int32
      System.Int32)
    (static: System.Array System.Type System.Int32 System.Int32)
    (static: System.Array System.Type System.Int32))
  (define-method-port
    copy
    System.Array
    Copy
    (static: System.Void System.Array System.Array System.Int64)
    (static:
      System.Void
      System.Array
      System.Int64
      System.Array
      System.Int64
      System.Int64)
    (static:
      System.Void
      System.Array
      System.Int32
      System.Array
      System.Int32
      System.Int32)
    (static: System.Void System.Array System.Array System.Int32))
  (define-method-port exists? System.Array Exists)
  (define-method-port find System.Array Find)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.Array
    Length
    System.Int32)
  (define-field-port
    long-length
    #f
    #f
    (property:)
    System.Array
    LongLength
    System.Int64)
  (define-field-port
    rank
    #f
    #f
    (property:)
    System.Array
    Rank
    System.Int32)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Array
    IsSynchronized
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Array
    SyncRoot
    System.Object)
  (define-field-port
    is-fixed-size?
    #f
    #f
    (property:)
    System.Array
    IsFixedSize
    System.Boolean)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Array
    IsReadOnly
    System.Boolean))
