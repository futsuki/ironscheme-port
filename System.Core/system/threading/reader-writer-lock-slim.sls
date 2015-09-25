(library (system threading reader-writer-lock-slim)
  (export new
          is?
          reader-writer-lock-slim?
          exit-upgradeable-read-lock
          enter-read-lock
          dispose
          try-enter-write-lock?
          exit-read-lock
          try-enter-read-lock?
          enter-upgradeable-read-lock
          exit-write-lock
          enter-write-lock
          try-enter-upgradeable-read-lock?
          is-read-lock-held?
          is-write-lock-held?
          is-upgradeable-read-lock-held?
          current-read-count
          recursive-read-count
          recursive-upgrade-count
          recursive-write-count
          waiting-read-count
          waiting-upgrade-count
          waiting-write-count
          recursion-policy)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Threading.ReaderWriterLockSlim a ...)))))
  (define (is? a) (clr-is System.Threading.ReaderWriterLockSlim a))
  (define (reader-writer-lock-slim? a)
    (clr-is System.Threading.ReaderWriterLockSlim a))
  (define-method-port
    exit-upgradeable-read-lock
    System.Threading.ReaderWriterLockSlim
    ExitUpgradeableReadLock
    (System.Void))
  (define-method-port
    enter-read-lock
    System.Threading.ReaderWriterLockSlim
    EnterReadLock
    (System.Void))
  (define-method-port
    dispose
    System.Threading.ReaderWriterLockSlim
    Dispose
    (System.Void))
  (define-method-port
    try-enter-write-lock?
    System.Threading.ReaderWriterLockSlim
    TryEnterWriteLock
    (System.Boolean System.TimeSpan)
    (System.Boolean System.Int32))
  (define-method-port
    exit-read-lock
    System.Threading.ReaderWriterLockSlim
    ExitReadLock
    (System.Void))
  (define-method-port
    try-enter-read-lock?
    System.Threading.ReaderWriterLockSlim
    TryEnterReadLock
    (System.Boolean System.TimeSpan)
    (System.Boolean System.Int32))
  (define-method-port
    enter-upgradeable-read-lock
    System.Threading.ReaderWriterLockSlim
    EnterUpgradeableReadLock
    (System.Void))
  (define-method-port
    exit-write-lock
    System.Threading.ReaderWriterLockSlim
    ExitWriteLock
    (System.Void))
  (define-method-port
    enter-write-lock
    System.Threading.ReaderWriterLockSlim
    EnterWriteLock
    (System.Void))
  (define-method-port
    try-enter-upgradeable-read-lock?
    System.Threading.ReaderWriterLockSlim
    TryEnterUpgradeableReadLock
    (System.Boolean System.TimeSpan)
    (System.Boolean System.Int32))
  (define-field-port
    is-read-lock-held?
    #f
    #f
    (property:)
    System.Threading.ReaderWriterLockSlim
    IsReadLockHeld
    System.Boolean)
  (define-field-port
    is-write-lock-held?
    #f
    #f
    (property:)
    System.Threading.ReaderWriterLockSlim
    IsWriteLockHeld
    System.Boolean)
  (define-field-port
    is-upgradeable-read-lock-held?
    #f
    #f
    (property:)
    System.Threading.ReaderWriterLockSlim
    IsUpgradeableReadLockHeld
    System.Boolean)
  (define-field-port
    current-read-count
    #f
    #f
    (property:)
    System.Threading.ReaderWriterLockSlim
    CurrentReadCount
    System.Int32)
  (define-field-port
    recursive-read-count
    #f
    #f
    (property:)
    System.Threading.ReaderWriterLockSlim
    RecursiveReadCount
    System.Int32)
  (define-field-port
    recursive-upgrade-count
    #f
    #f
    (property:)
    System.Threading.ReaderWriterLockSlim
    RecursiveUpgradeCount
    System.Int32)
  (define-field-port
    recursive-write-count
    #f
    #f
    (property:)
    System.Threading.ReaderWriterLockSlim
    RecursiveWriteCount
    System.Int32)
  (define-field-port
    waiting-read-count
    #f
    #f
    (property:)
    System.Threading.ReaderWriterLockSlim
    WaitingReadCount
    System.Int32)
  (define-field-port
    waiting-upgrade-count
    #f
    #f
    (property:)
    System.Threading.ReaderWriterLockSlim
    WaitingUpgradeCount
    System.Int32)
  (define-field-port
    waiting-write-count
    #f
    #f
    (property:)
    System.Threading.ReaderWriterLockSlim
    WaitingWriteCount
    System.Int32)
  (define-field-port
    recursion-policy
    #f
    #f
    (property:)
    System.Threading.ReaderWriterLockSlim
    RecursionPolicy
    System.Threading.LockRecursionPolicy))
