(library (system collections queue)
  (export new
          is?
          queue?
          enqueue
          dequeue
          get-enumerator
          contains?
          synchronized
          peek
          clear
          clone
          copy-to
          to-array
          trim-to-size
          count
          is-synchronized?
          sync-root)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Collections.Queue a ...)))))
  (define (is? a) (clr-is System.Collections.Queue a))
  (define (queue? a) (clr-is System.Collections.Queue a))
  (define-method-port
    enqueue
    System.Collections.Queue
    Enqueue
    (System.Void System.Object))
  (define-method-port
    dequeue
    System.Collections.Queue
    Dequeue
    (System.Object))
  (define-method-port
    get-enumerator
    System.Collections.Queue
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    contains?
    System.Collections.Queue
    Contains
    (System.Boolean System.Object))
  (define-method-port
    synchronized
    System.Collections.Queue
    Synchronized
    (static: System.Collections.Queue System.Collections.Queue))
  (define-method-port
    peek
    System.Collections.Queue
    Peek
    (System.Object))
  (define-method-port
    clear
    System.Collections.Queue
    Clear
    (System.Void))
  (define-method-port
    clone
    System.Collections.Queue
    Clone
    (System.Object))
  (define-method-port
    copy-to
    System.Collections.Queue
    CopyTo
    (System.Void System.Array System.Int32))
  (define-method-port
    to-array
    System.Collections.Queue
    ToArray
    (System.Object[]))
  (define-method-port
    trim-to-size
    System.Collections.Queue
    TrimToSize
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Collections.Queue
    Count
    System.Int32)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Collections.Queue
    IsSynchronized
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Collections.Queue
    SyncRoot
    System.Object))
