(library (system runtime gcsettings)
  (export is?
          gcsettings?
          is-server-gc?
          latency-mode-get
          latency-mode-set!
          latency-mode-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Runtime.GCSettings a))
  (define (gcsettings? a) (clr-is System.Runtime.GCSettings a))
  (define-field-port
    is-server-gc?
    #f
    #f
    (static: property:)
    System.Runtime.GCSettings
    IsServerGC
    System.Boolean)
  (define-field-port
    latency-mode-get
    latency-mode-set!
    latency-mode-update!
    (static: property:)
    System.Runtime.GCSettings
    LatencyMode
    System.Runtime.GCLatencyMode))
