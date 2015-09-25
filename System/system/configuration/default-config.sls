(library (system configuration default-config)
  (export is? default-config? get-config init get-instance)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Configuration.DefaultConfig a))
  (define (default-config? a)
    (clr-is System.Configuration.DefaultConfig a))
  (define-method-port
    get-config
    System.Configuration.DefaultConfig
    GetConfig
    (System.Object System.String))
  (define-method-port
    init
    System.Configuration.DefaultConfig
    Init
    (System.Void))
  (define-method-port
    get-instance
    System.Configuration.DefaultConfig
    GetInstance
    (static: System.Configuration.DefaultConfig)))
