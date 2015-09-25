(library (system io isolated-storage isolated-storage-file)
  (export is?
          isolated-storage-file?
          get-machine-store-for-domain
          dispose
          close
          get-file-names
          delete-directory
          get-directory-names
          get-enumerator
          delete-file
          remove
          get-user-store-for-domain
          create-directory
          get-machine-store-for-application
          get-machine-store-for-assembly
          get-user-store-for-application
          get-store
          get-user-store-for-assembly
          current-size
          maximum-size)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.IO.IsolatedStorage.IsolatedStorageFile a))
  (define (isolated-storage-file? a)
    (clr-is System.IO.IsolatedStorage.IsolatedStorageFile a))
  (define-method-port
    get-machine-store-for-domain
    System.IO.IsolatedStorage.IsolatedStorageFile
    GetMachineStoreForDomain
    (static: System.IO.IsolatedStorage.IsolatedStorageFile))
  (define-method-port
    dispose
    System.IO.IsolatedStorage.IsolatedStorageFile
    Dispose
    (System.Void))
  (define-method-port
    close
    System.IO.IsolatedStorage.IsolatedStorageFile
    Close
    (System.Void))
  (define-method-port
    get-file-names
    System.IO.IsolatedStorage.IsolatedStorageFile
    GetFileNames
    (System.String[] System.String))
  (define-method-port
    delete-directory
    System.IO.IsolatedStorage.IsolatedStorageFile
    DeleteDirectory
    (System.Void System.String))
  (define-method-port
    get-directory-names
    System.IO.IsolatedStorage.IsolatedStorageFile
    GetDirectoryNames
    (System.String[] System.String))
  (define-method-port
    get-enumerator
    System.IO.IsolatedStorage.IsolatedStorageFile
    GetEnumerator
    (static:
      System.Collections.IEnumerator
      System.IO.IsolatedStorage.IsolatedStorageScope))
  (define-method-port
    delete-file
    System.IO.IsolatedStorage.IsolatedStorageFile
    DeleteFile
    (System.Void System.String))
  (define-method-port
    remove
    System.IO.IsolatedStorage.IsolatedStorageFile
    Remove
    (System.Void)
    (static:
      System.Void
      System.IO.IsolatedStorage.IsolatedStorageScope))
  (define-method-port
    get-user-store-for-domain
    System.IO.IsolatedStorage.IsolatedStorageFile
    GetUserStoreForDomain
    (static: System.IO.IsolatedStorage.IsolatedStorageFile))
  (define-method-port
    create-directory
    System.IO.IsolatedStorage.IsolatedStorageFile
    CreateDirectory
    (System.Void System.String))
  (define-method-port
    get-machine-store-for-application
    System.IO.IsolatedStorage.IsolatedStorageFile
    GetMachineStoreForApplication
    (static: System.IO.IsolatedStorage.IsolatedStorageFile))
  (define-method-port
    get-machine-store-for-assembly
    System.IO.IsolatedStorage.IsolatedStorageFile
    GetMachineStoreForAssembly
    (static: System.IO.IsolatedStorage.IsolatedStorageFile))
  (define-method-port
    get-user-store-for-application
    System.IO.IsolatedStorage.IsolatedStorageFile
    GetUserStoreForApplication
    (static: System.IO.IsolatedStorage.IsolatedStorageFile))
  (define-method-port
    get-store
    System.IO.IsolatedStorage.IsolatedStorageFile
    GetStore
    (static:
      System.IO.IsolatedStorage.IsolatedStorageFile
      System.IO.IsolatedStorage.IsolatedStorageScope
      System.Type)
    (static:
      System.IO.IsolatedStorage.IsolatedStorageFile
      System.IO.IsolatedStorage.IsolatedStorageScope
      System.Object)
    (static:
      System.IO.IsolatedStorage.IsolatedStorageFile
      System.IO.IsolatedStorage.IsolatedStorageScope
      System.Type
      System.Type)
    (static:
      System.IO.IsolatedStorage.IsolatedStorageFile
      System.IO.IsolatedStorage.IsolatedStorageScope
      System.Object
      System.Object)
    (static:
      System.IO.IsolatedStorage.IsolatedStorageFile
      System.IO.IsolatedStorage.IsolatedStorageScope
      System.Security.Policy.Evidence
      System.Type
      System.Security.Policy.Evidence
      System.Type))
  (define-method-port
    get-user-store-for-assembly
    System.IO.IsolatedStorage.IsolatedStorageFile
    GetUserStoreForAssembly
    (static: System.IO.IsolatedStorage.IsolatedStorageFile))
  (define-field-port
    current-size
    #f
    #f
    (property:)
    System.IO.IsolatedStorage.IsolatedStorageFile
    CurrentSize
    System.UInt64)
  (define-field-port
    maximum-size
    #f
    #f
    (property:)
    System.IO.IsolatedStorage.IsolatedStorageFile
    MaximumSize
    System.UInt64))
