(library (system collections stack)
  (export new
          is?
          stack?
          copy-to
          clone
          push
          get-enumerator
          contains?
          peek
          pop
          synchronized
          clear
          to-array
          count
          is-synchronized?
          sync-root)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Collections.Stack a ...)))))
  (define (is? a) (clr-is System.Collections.Stack a))
  (define (stack? a) (clr-is System.Collections.Stack a))
  (define-method-port
    copy-to
    System.Collections.Stack
    CopyTo
    (System.Void System.Array System.Int32))
  (define-method-port
    clone
    System.Collections.Stack
    Clone
    (System.Object))
  (define-method-port
    push
    System.Collections.Stack
    Push
    (System.Void System.Object))
  (define-method-port
    get-enumerator
    System.Collections.Stack
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    contains?
    System.Collections.Stack
    Contains
    (System.Boolean System.Object))
  (define-method-port
    peek
    System.Collections.Stack
    Peek
    (System.Object))
  (define-method-port pop System.Collections.Stack Pop (System.Object))
  (define-method-port
    synchronized
    System.Collections.Stack
    Synchronized
    (static: System.Collections.Stack System.Collections.Stack))
  (define-method-port
    clear
    System.Collections.Stack
    Clear
    (System.Void))
  (define-method-port
    to-array
    System.Collections.Stack
    ToArray
    (System.Object[]))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Collections.Stack
    Count
    System.Int32)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Collections.Stack
    IsSynchronized
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Collections.Stack
    SyncRoot
    System.Object))
