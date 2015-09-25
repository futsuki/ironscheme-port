(library (mono security cryptography macalgorithm)
  (export new is? macalgorithm? initialize core final)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Security.Cryptography.MACAlgorithm a ...)))))
  (define (is? a) (clr-is Mono.Security.Cryptography.MACAlgorithm a))
  (define (macalgorithm? a)
    (clr-is Mono.Security.Cryptography.MACAlgorithm a))
  (define-method-port
    initialize
    Mono.Security.Cryptography.MACAlgorithm
    Initialize
    (System.Void System.Byte[]))
  (define-method-port
    core
    Mono.Security.Cryptography.MACAlgorithm
    Core
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    final
    Mono.Security.Cryptography.MACAlgorithm
    Final
    (System.Byte[])))
