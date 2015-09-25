(library (microsoft win32 registry-key)
  (export is?
          registry-key?
          get-value-kind
          set-access-control
          delete-sub-key-tree
          delete-value
          delete-sub-key
          create-sub-key
          open-sub-key
          open-remote-base-key
          get-sub-key-names
          set-value
          get-value
          get-value-names
          to-string
          flush
          get-access-control
          close
          name
          sub-key-count
          value-count)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Microsoft.Win32.RegistryKey a))
  (define (registry-key? a) (clr-is Microsoft.Win32.RegistryKey a))
  (define-method-port
    get-value-kind
    Microsoft.Win32.RegistryKey
    GetValueKind
    (Microsoft.Win32.RegistryValueKind System.String))
  (define-method-port
    set-access-control
    Microsoft.Win32.RegistryKey
    SetAccessControl
    (System.Void System.Security.AccessControl.RegistrySecurity))
  (define-method-port
    delete-sub-key-tree
    Microsoft.Win32.RegistryKey
    DeleteSubKeyTree
    (System.Void System.String))
  (define-method-port
    delete-value
    Microsoft.Win32.RegistryKey
    DeleteValue
    (System.Void System.String System.Boolean)
    (System.Void System.String))
  (define-method-port
    delete-sub-key
    Microsoft.Win32.RegistryKey
    DeleteSubKey
    (System.Void System.String System.Boolean)
    (System.Void System.String))
  (define-method-port
    create-sub-key
    Microsoft.Win32.RegistryKey
    CreateSubKey
    (Microsoft.Win32.RegistryKey
      System.String
      Microsoft.Win32.RegistryKeyPermissionCheck
      System.Security.AccessControl.RegistrySecurity)
    (Microsoft.Win32.RegistryKey
      System.String
      Microsoft.Win32.RegistryKeyPermissionCheck)
    (Microsoft.Win32.RegistryKey System.String))
  (define-method-port
    open-sub-key
    Microsoft.Win32.RegistryKey
    OpenSubKey
    (Microsoft.Win32.RegistryKey
      System.String
      Microsoft.Win32.RegistryKeyPermissionCheck
      System.Security.AccessControl.RegistryRights)
    (Microsoft.Win32.RegistryKey
      System.String
      Microsoft.Win32.RegistryKeyPermissionCheck)
    (Microsoft.Win32.RegistryKey System.String System.Boolean)
    (Microsoft.Win32.RegistryKey System.String))
  (define-method-port
    open-remote-base-key
    Microsoft.Win32.RegistryKey
    OpenRemoteBaseKey
    (static:
      Microsoft.Win32.RegistryKey
      Microsoft.Win32.RegistryHive
      System.String))
  (define-method-port
    get-sub-key-names
    Microsoft.Win32.RegistryKey
    GetSubKeyNames
    (System.String[]))
  (define-method-port
    set-value
    Microsoft.Win32.RegistryKey
    SetValue
    (System.Void
      System.String
      System.Object
      Microsoft.Win32.RegistryValueKind)
    (System.Void System.String System.Object))
  (define-method-port
    get-value
    Microsoft.Win32.RegistryKey
    GetValue
    (System.Object
      System.String
      System.Object
      Microsoft.Win32.RegistryValueOptions)
    (System.Object System.String System.Object)
    (System.Object System.String))
  (define-method-port
    get-value-names
    Microsoft.Win32.RegistryKey
    GetValueNames
    (System.String[]))
  (define-method-port
    to-string
    Microsoft.Win32.RegistryKey
    ToString
    (System.String))
  (define-method-port
    flush
    Microsoft.Win32.RegistryKey
    Flush
    (System.Void))
  (define-method-port
    get-access-control
    Microsoft.Win32.RegistryKey
    GetAccessControl
    (System.Security.AccessControl.RegistrySecurity
      System.Security.AccessControl.AccessControlSections)
    (System.Security.AccessControl.RegistrySecurity))
  (define-method-port
    close
    Microsoft.Win32.RegistryKey
    Close
    (System.Void))
  (define-field-port
    name
    #f
    #f
    (property:)
    Microsoft.Win32.RegistryKey
    Name
    System.String)
  (define-field-port
    sub-key-count
    #f
    #f
    (property:)
    Microsoft.Win32.RegistryKey
    SubKeyCount
    System.Int32)
  (define-field-port
    value-count
    #f
    #f
    (property:)
    Microsoft.Win32.RegistryKey
    ValueCount
    System.Int32))
