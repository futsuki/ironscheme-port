(library (microsoft win32 unix-registry-api)
  (export new
          is?
          unix-registry-api?
          value-count
          sub-key-count
          delete-key
          delete-value
          create-sub-key
          open-sub-key
          open-remote-base-key
          get-sub-key-names
          set-value
          get-value
          get-value-names
          to-string
          flush
          close)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Microsoft.Win32.UnixRegistryApi a ...)))))
  (define (is? a) (clr-is Microsoft.Win32.UnixRegistryApi a))
  (define (unix-registry-api? a)
    (clr-is Microsoft.Win32.UnixRegistryApi a))
  (define-method-port
    value-count
    Microsoft.Win32.UnixRegistryApi
    ValueCount
    (System.Int32 Microsoft.Win32.RegistryKey))
  (define-method-port
    sub-key-count
    Microsoft.Win32.UnixRegistryApi
    SubKeyCount
    (System.Int32 Microsoft.Win32.RegistryKey))
  (define-method-port
    delete-key
    Microsoft.Win32.UnixRegistryApi
    DeleteKey
    (System.Void
      Microsoft.Win32.RegistryKey
      System.String
      System.Boolean))
  (define-method-port
    delete-value
    Microsoft.Win32.UnixRegistryApi
    DeleteValue
    (System.Void
      Microsoft.Win32.RegistryKey
      System.String
      System.Boolean))
  (define-method-port
    create-sub-key
    Microsoft.Win32.UnixRegistryApi
    CreateSubKey
    (Microsoft.Win32.RegistryKey
      Microsoft.Win32.RegistryKey
      System.String))
  (define-method-port
    open-sub-key
    Microsoft.Win32.UnixRegistryApi
    OpenSubKey
    (Microsoft.Win32.RegistryKey
      Microsoft.Win32.RegistryKey
      System.String
      System.Boolean))
  (define-method-port
    open-remote-base-key
    Microsoft.Win32.UnixRegistryApi
    OpenRemoteBaseKey
    (Microsoft.Win32.RegistryKey
      Microsoft.Win32.RegistryHive
      System.String))
  (define-method-port
    get-sub-key-names
    Microsoft.Win32.UnixRegistryApi
    GetSubKeyNames
    (System.String[] Microsoft.Win32.RegistryKey))
  (define-method-port
    set-value
    Microsoft.Win32.UnixRegistryApi
    SetValue
    (System.Void
      Microsoft.Win32.RegistryKey
      System.String
      System.Object
      Microsoft.Win32.RegistryValueKind)
    (System.Void
      Microsoft.Win32.RegistryKey
      System.String
      System.Object))
  (define-method-port
    get-value
    Microsoft.Win32.UnixRegistryApi
    GetValue
    (System.Object
      Microsoft.Win32.RegistryKey
      System.String
      System.Object
      Microsoft.Win32.RegistryValueOptions))
  (define-method-port
    get-value-names
    Microsoft.Win32.UnixRegistryApi
    GetValueNames
    (System.String[] Microsoft.Win32.RegistryKey))
  (define-method-port
    to-string
    Microsoft.Win32.UnixRegistryApi
    ToString
    (System.String Microsoft.Win32.RegistryKey))
  (define-method-port
    flush
    Microsoft.Win32.UnixRegistryApi
    Flush
    (System.Void Microsoft.Win32.RegistryKey))
  (define-method-port
    close
    Microsoft.Win32.UnixRegistryApi
    Close
    (System.Void Microsoft.Win32.RegistryKey)))
