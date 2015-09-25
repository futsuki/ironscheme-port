(library (system diagnostics process-module)
  (export is?
          process-module?
          to-string
          base-address
          entry-point-address
          file-name
          file-version-info
          module-memory-size
          module-name)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Diagnostics.ProcessModule a))
  (define (process-module? a)
    (clr-is System.Diagnostics.ProcessModule a))
  (define-method-port
    to-string
    System.Diagnostics.ProcessModule
    ToString
    (System.String))
  (define-field-port
    base-address
    #f
    #f
    (property:)
    System.Diagnostics.ProcessModule
    BaseAddress
    System.IntPtr)
  (define-field-port
    entry-point-address
    #f
    #f
    (property:)
    System.Diagnostics.ProcessModule
    EntryPointAddress
    System.IntPtr)
  (define-field-port
    file-name
    #f
    #f
    (property:)
    System.Diagnostics.ProcessModule
    FileName
    System.String)
  (define-field-port
    file-version-info
    #f
    #f
    (property:)
    System.Diagnostics.ProcessModule
    FileVersionInfo
    System.Diagnostics.FileVersionInfo)
  (define-field-port
    module-memory-size
    #f
    #f
    (property:)
    System.Diagnostics.ProcessModule
    ModuleMemorySize
    System.Int32)
  (define-field-port
    module-name
    #f
    #f
    (property:)
    System.Diagnostics.ProcessModule
    ModuleName
    System.String))
