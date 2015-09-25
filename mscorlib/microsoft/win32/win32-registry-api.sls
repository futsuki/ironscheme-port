(library (microsoft win32 win32-registry-api)
  (export new
          is?
          win32-registry-api?
          value-count
          open-remote-base-key
          delete-key
          delete-value
          create-sub-key
          open-sub-key
          sub-key-count
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
        ((_ a ...)
         #'(clr-new Microsoft.Win32.Win32RegistryApi a ...)))))
  (define (is? a) (clr-is Microsoft.Win32.Win32RegistryApi a))
  (define (win32-registry-api? a)
    (clr-is Microsoft.Win32.Win32RegistryApi a))
  (define-method-port
    value-count
    Microsoft.Win32.Win32RegistryApi
    ValueCount
    (System.Int32 Microsoft.Win32.RegistryKey))
  (define-method-port
    open-remote-base-key
    Microsoft.Win32.Win32RegistryApi
    OpenRemoteBaseKey
    (Microsoft.Win32.RegistryKey
      Microsoft.Win32.RegistryHive
      System.String))
  (define-method-port
    delete-key
    Microsoft.Win32.Win32RegistryApi
    DeleteKey
    (System.Void
      Microsoft.Win32.RegistryKey
      System.String
      System.Boolean))
  (define-method-port
    delete-value
    Microsoft.Win32.Win32RegistryApi
    DeleteValue
    (System.Void
      Microsoft.Win32.RegistryKey
      System.String
      System.Boolean))
  (define-method-port
    create-sub-key
    Microsoft.Win32.Win32RegistryApi
    CreateSubKey
    (Microsoft.Win32.RegistryKey
      Microsoft.Win32.RegistryKey
      System.String))
  (define-method-port
    open-sub-key
    Microsoft.Win32.Win32RegistryApi
    OpenSubKey
    (Microsoft.Win32.RegistryKey
      Microsoft.Win32.RegistryKey
      System.String
      System.Boolean))
  (define-method-port
    sub-key-count
    Microsoft.Win32.Win32RegistryApi
    SubKeyCount
    (System.Int32 Microsoft.Win32.RegistryKey))
  (define-method-port
    get-sub-key-names
    Microsoft.Win32.Win32RegistryApi
    GetSubKeyNames
    (System.String[] Microsoft.Win32.RegistryKey))
  (define-method-port
    set-value
    Microsoft.Win32.Win32RegistryApi
    SetValue
    (System.Void
      Microsoft.Win32.RegistryKey
      System.String
      System.Object)
    (System.Void
      Microsoft.Win32.RegistryKey
      System.String
      System.Object
      Microsoft.Win32.RegistryValueKind))
  (define-method-port
    get-value
    Microsoft.Win32.Win32RegistryApi
    GetValue
    (System.Object
      Microsoft.Win32.RegistryKey
      System.String
      System.Object
      Microsoft.Win32.RegistryValueOptions))
  (define-method-port
    get-value-names
    Microsoft.Win32.Win32RegistryApi
    GetValueNames
    (System.String[] Microsoft.Win32.RegistryKey))
  (define-method-port
    to-string
    Microsoft.Win32.Win32RegistryApi
    ToString
    (System.String Microsoft.Win32.RegistryKey))
  (define-method-port
    flush
    Microsoft.Win32.Win32RegistryApi
    Flush
    (System.Void Microsoft.Win32.RegistryKey))
  (define-method-port
    close
    Microsoft.Win32.Win32RegistryApi
    Close
    (System.Void Microsoft.Win32.RegistryKey)))
