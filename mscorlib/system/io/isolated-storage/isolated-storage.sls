(library (system io isolated-storage isolated-storage)
  (export is?
          isolated-storage?
          remove
          application-identity
          assembly-identity
          current-size
          domain-identity
          maximum-size
          scope)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.IO.IsolatedStorage.IsolatedStorage a))
  (define (isolated-storage? a)
    (clr-is System.IO.IsolatedStorage.IsolatedStorage a))
  (define-method-port
    remove
    System.IO.IsolatedStorage.IsolatedStorage
    Remove
    (System.Void))
  (define-field-port
    application-identity
    #f
    #f
    (property:)
    System.IO.IsolatedStorage.IsolatedStorage
    ApplicationIdentity
    System.Object)
  (define-field-port
    assembly-identity
    #f
    #f
    (property:)
    System.IO.IsolatedStorage.IsolatedStorage
    AssemblyIdentity
    System.Object)
  (define-field-port
    current-size
    #f
    #f
    (property:)
    System.IO.IsolatedStorage.IsolatedStorage
    CurrentSize
    System.UInt64)
  (define-field-port
    domain-identity
    #f
    #f
    (property:)
    System.IO.IsolatedStorage.IsolatedStorage
    DomainIdentity
    System.Object)
  (define-field-port
    maximum-size
    #f
    #f
    (property:)
    System.IO.IsolatedStorage.IsolatedStorage
    MaximumSize
    System.UInt64)
  (define-field-port
    scope
    #f
    #f
    (property:)
    System.IO.IsolatedStorage.IsolatedStorage
    Scope
    System.IO.IsolatedStorage.IsolatedStorageScope))
