(library (unity-engine caching)
  (export new
          is?
          caching?
          mark-as-used?
          is-version-cached?
          delete-from-cache?
          set-no-backup-flag
          reset-no-backup-flag
          clean-named-cache?
          authorize?
          get-version-from-cache
          clean-cache?
          index
          space-free
          maximum-available-disk-space-get
          maximum-available-disk-space-set!
          maximum-available-disk-space-update!
          space-occupied
          space-available
          space-used
          expiration-delay-get
          expiration-delay-set!
          expiration-delay-update!
          enabled?-get
          enabled?-set!
          enabled?-update!
          ready?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Caching a ...)))))
  (define (is? a) (clr-is UnityEngine.Caching a))
  (define (caching? a) (clr-is UnityEngine.Caching a))
  (define-method-port
    mark-as-used?
    UnityEngine.Caching
    MarkAsUsed
    (static: System.Boolean System.String UnityEngine.Hash128)
    (static: System.Boolean System.String System.Int32))
  (define-method-port
    is-version-cached?
    UnityEngine.Caching
    IsVersionCached
    (static: System.Boolean System.String UnityEngine.Hash128)
    (static: System.Boolean System.String System.Int32))
  (define-method-port
    delete-from-cache?
    UnityEngine.Caching
    DeleteFromCache
    (static: System.Boolean System.String))
  (define-method-port
    set-no-backup-flag
    UnityEngine.Caching
    SetNoBackupFlag
    (static: System.Void System.String UnityEngine.Hash128)
    (static: System.Void System.String System.Int32))
  (define-method-port
    reset-no-backup-flag
    UnityEngine.Caching
    ResetNoBackupFlag
    (static: System.Void System.String UnityEngine.Hash128)
    (static: System.Void System.String System.Int32))
  (define-method-port
    clean-named-cache?
    UnityEngine.Caching
    CleanNamedCache
    (static: System.Boolean System.String))
  (define-method-port
    authorize?
    UnityEngine.Caching
    Authorize
    (static:
      System.Boolean
      System.String
      System.String
      System.Int32
      System.String)
    (static:
      System.Boolean
      System.String
      System.String
      System.Int32
      System.Int32
      System.String)
    (static:
      System.Boolean
      System.String
      System.String
      System.Int64
      System.Int32
      System.String)
    (static:
      System.Boolean
      System.String
      System.String
      System.Int64
      System.String))
  (define-method-port
    get-version-from-cache
    UnityEngine.Caching
    GetVersionFromCache
    (static: System.Int32 System.String))
  (define-method-port
    clean-cache?
    UnityEngine.Caching
    CleanCache
    (static: System.Boolean))
  (define-field-port
    index
    #f
    #f
    (static: property:)
    UnityEngine.Caching
    index
    UnityEngine.CacheIndex[])
  (define-field-port
    space-free
    #f
    #f
    (static: property:)
    UnityEngine.Caching
    spaceFree
    System.Int64)
  (define-field-port
    maximum-available-disk-space-get
    maximum-available-disk-space-set!
    maximum-available-disk-space-update!
    (static: property:)
    UnityEngine.Caching
    maximumAvailableDiskSpace
    System.Int64)
  (define-field-port
    space-occupied
    #f
    #f
    (static: property:)
    UnityEngine.Caching
    spaceOccupied
    System.Int64)
  (define-field-port
    space-available
    #f
    #f
    (static: property:)
    UnityEngine.Caching
    spaceAvailable
    System.Int32)
  (define-field-port
    space-used
    #f
    #f
    (static: property:)
    UnityEngine.Caching
    spaceUsed
    System.Int32)
  (define-field-port
    expiration-delay-get
    expiration-delay-set!
    expiration-delay-update!
    (static: property:)
    UnityEngine.Caching
    expirationDelay
    System.Int32)
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    (static: property:)
    UnityEngine.Caching
    enabled
    System.Boolean)
  (define-field-port
    ready?
    #f
    #f
    (static: property:)
    UnityEngine.Caching
    ready
    System.Boolean))
