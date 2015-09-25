(library (system reflection pointer)
  (export is? pointer? unbox box)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.Pointer a))
  (define (pointer? a) (clr-is System.Reflection.Pointer a))
  (define-method-port
    unbox
    System.Reflection.Pointer
    Unbox
    (static: System.Void* System.Object))
  (define-method-port
    box
    System.Reflection.Pointer
    Box
    (static: System.Object System.Void* System.Type)))
