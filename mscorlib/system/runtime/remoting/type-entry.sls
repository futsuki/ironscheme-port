(library (system runtime remoting type-entry)
  (export is?
          type-entry?
          assembly-name-get
          assembly-name-set!
          assembly-name-update!
          type-name-get
          type-name-set!
          type-name-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Runtime.Remoting.TypeEntry a))
  (define (type-entry? a) (clr-is System.Runtime.Remoting.TypeEntry a))
  (define-field-port
    assembly-name-get
    assembly-name-set!
    assembly-name-update!
    (property:)
    System.Runtime.Remoting.TypeEntry
    AssemblyName
    System.String)
  (define-field-port
    type-name-get
    type-name-set!
    type-name-update!
    (property:)
    System.Runtime.Remoting.TypeEntry
    TypeName
    System.String))
