(library (microsoft win32 key-handler)
  (export is?
          key-handler?
          load
          flush
          ensure
          lookup
          set-value
          value-exists?
          remove-value
          get-value
          get-value-names
          dirty-timeout
          drop
          probe
          dir-get
          dir-set!
          dir-update!
          value-count
          is-marked-for-deletion?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Microsoft.Win32.KeyHandler a))
  (define (key-handler? a) (clr-is Microsoft.Win32.KeyHandler a))
  (define-method-port
    load
    Microsoft.Win32.KeyHandler
    Load
    (System.Void))
  (define-method-port
    flush
    Microsoft.Win32.KeyHandler
    Flush
    (System.Void))
  (define-method-port
    ensure
    Microsoft.Win32.KeyHandler
    Ensure
    (Microsoft.Win32.RegistryKey
      Microsoft.Win32.RegistryKey
      System.String
      System.Boolean))
  (define-method-port
    lookup
    Microsoft.Win32.KeyHandler
    Lookup
    (static:
      Microsoft.Win32.KeyHandler
      Microsoft.Win32.RegistryKey
      System.Boolean))
  (define-method-port
    set-value
    Microsoft.Win32.KeyHandler
    SetValue
    (System.Void
      System.String
      System.Object
      Microsoft.Win32.RegistryValueKind)
    (System.Void System.String System.Object))
  (define-method-port
    value-exists?
    Microsoft.Win32.KeyHandler
    ValueExists
    (System.Boolean System.String))
  (define-method-port
    remove-value
    Microsoft.Win32.KeyHandler
    RemoveValue
    (System.Void System.String))
  (define-method-port
    get-value
    Microsoft.Win32.KeyHandler
    GetValue
    (System.Object System.String Microsoft.Win32.RegistryValueOptions))
  (define-method-port
    get-value-names
    Microsoft.Win32.KeyHandler
    GetValueNames
    (System.String[]))
  (define-method-port
    dirty-timeout
    Microsoft.Win32.KeyHandler
    DirtyTimeout
    (System.Void System.Object))
  (define-method-port
    drop
    Microsoft.Win32.KeyHandler
    Drop
    (static: System.Void System.String)
    (static: System.Void Microsoft.Win32.RegistryKey))
  (define-method-port
    probe
    Microsoft.Win32.KeyHandler
    Probe
    (Microsoft.Win32.RegistryKey
      Microsoft.Win32.RegistryKey
      System.String
      System.Boolean))
  (define-field-port
    dir-get
    dir-set!
    dir-update!
    ()
    Microsoft.Win32.KeyHandler
    Dir
    System.String)
  (define-field-port
    value-count
    #f
    #f
    (property:)
    Microsoft.Win32.KeyHandler
    ValueCount
    System.Int32)
  (define-field-port
    is-marked-for-deletion?
    #f
    #f
    (property:)
    Microsoft.Win32.KeyHandler
    IsMarkedForDeletion
    System.Boolean))
