(library (system security policy evidence)
  (export new
          is?
          evidence?
          copy-to
          remove-type
          get-hash-code
          add-host
          merge
          get-enumerator
          get-assembly-enumerator
          add-assembly
          get-host-enumerator
          clear
          equals?
          count
          is-read-only?
          is-synchronized?
          locked?-get
          locked?-set!
          locked?-update!
          sync-root)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Security.Policy.Evidence a ...)))))
  (define (is? a) (clr-is System.Security.Policy.Evidence a))
  (define (evidence? a) (clr-is System.Security.Policy.Evidence a))
  (define-method-port
    copy-to
    System.Security.Policy.Evidence
    CopyTo
    (System.Void System.Array System.Int32))
  (define-method-port
    remove-type
    System.Security.Policy.Evidence
    RemoveType
    (System.Void System.Type))
  (define-method-port
    get-hash-code
    System.Security.Policy.Evidence
    GetHashCode
    (System.Int32))
  (define-method-port
    add-host
    System.Security.Policy.Evidence
    AddHost
    (System.Void System.Object))
  (define-method-port
    merge
    System.Security.Policy.Evidence
    Merge
    (System.Void System.Security.Policy.Evidence))
  (define-method-port
    get-enumerator
    System.Security.Policy.Evidence
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    get-assembly-enumerator
    System.Security.Policy.Evidence
    GetAssemblyEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add-assembly
    System.Security.Policy.Evidence
    AddAssembly
    (System.Void System.Object))
  (define-method-port
    get-host-enumerator
    System.Security.Policy.Evidence
    GetHostEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    clear
    System.Security.Policy.Evidence
    Clear
    (System.Void))
  (define-method-port
    equals?
    System.Security.Policy.Evidence
    Equals
    (System.Boolean System.Object))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Security.Policy.Evidence
    Count
    System.Int32)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Security.Policy.Evidence
    IsReadOnly
    System.Boolean)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Security.Policy.Evidence
    IsSynchronized
    System.Boolean)
  (define-field-port
    locked?-get
    locked?-set!
    locked?-update!
    (property:)
    System.Security.Policy.Evidence
    Locked
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Security.Policy.Evidence
    SyncRoot
    System.Object))
