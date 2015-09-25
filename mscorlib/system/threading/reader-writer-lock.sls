(library (system threading reader-writer-lock)
  (export new
          is?
          reader-writer-lock?
          acquire-writer-lock
          downgrade-from-writer-lock
          release-lock
          restore-lock
          any-writers-since?
          upgrade-to-writer-lock
          acquire-reader-lock
          release-reader-lock
          release-writer-lock
          is-reader-lock-held?
          is-writer-lock-held?
          writer-seq-num)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Threading.ReaderWriterLock a ...)))))
  (define (is? a) (clr-is System.Threading.ReaderWriterLock a))
  (define (reader-writer-lock? a)
    (clr-is System.Threading.ReaderWriterLock a))
  (define-method-port
    acquire-writer-lock
    System.Threading.ReaderWriterLock
    AcquireWriterLock
    (System.Void System.TimeSpan)
    (System.Void System.Int32))
  (define-method-port
    downgrade-from-writer-lock
    System.Threading.ReaderWriterLock
    DowngradeFromWriterLock
    (System.Void System.Threading.LockCookie&))
  (define-method-port
    release-lock
    System.Threading.ReaderWriterLock
    ReleaseLock
    (System.Threading.LockCookie))
  (define-method-port
    restore-lock
    System.Threading.ReaderWriterLock
    RestoreLock
    (System.Void System.Threading.LockCookie&))
  (define-method-port
    any-writers-since?
    System.Threading.ReaderWriterLock
    AnyWritersSince
    (System.Boolean System.Int32))
  (define-method-port
    upgrade-to-writer-lock
    System.Threading.ReaderWriterLock
    UpgradeToWriterLock
    (System.Threading.LockCookie System.TimeSpan)
    (System.Threading.LockCookie System.Int32))
  (define-method-port
    acquire-reader-lock
    System.Threading.ReaderWriterLock
    AcquireReaderLock
    (System.Void System.TimeSpan)
    (System.Void System.Int32))
  (define-method-port
    release-reader-lock
    System.Threading.ReaderWriterLock
    ReleaseReaderLock
    (System.Void))
  (define-method-port
    release-writer-lock
    System.Threading.ReaderWriterLock
    ReleaseWriterLock
    (System.Void))
  (define-field-port
    is-reader-lock-held?
    #f
    #f
    (property:)
    System.Threading.ReaderWriterLock
    IsReaderLockHeld
    System.Boolean)
  (define-field-port
    is-writer-lock-held?
    #f
    #f
    (property:)
    System.Threading.ReaderWriterLock
    IsWriterLockHeld
    System.Boolean)
  (define-field-port
    writer-seq-num
    #f
    #f
    (property:)
    System.Threading.ReaderWriterLock
    WriterSeqNum
    System.Int32))
