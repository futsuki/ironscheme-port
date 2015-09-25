(library (system nullable)
  (export is? nullable? get-underlying-type compare equals?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Nullable a))
  (define (nullable? a) (clr-is System.Nullable a))
  (define-method-port
    get-underlying-type
    System.Nullable
    GetUnderlyingType
    (static: System.Type System.Type))
  (define-method-port compare System.Nullable Compare)
  (define-method-port equals? System.Nullable Equals))
