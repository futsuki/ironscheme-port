(library (mono security cryptography block-processor)
  (export new is? block-processor? initialize core final)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Security.Cryptography.BlockProcessor a ...)))))
  (define (is? a) (clr-is Mono.Security.Cryptography.BlockProcessor a))
  (define (block-processor? a)
    (clr-is Mono.Security.Cryptography.BlockProcessor a))
  (define-method-port
    initialize
    Mono.Security.Cryptography.BlockProcessor
    Initialize
    (System.Void))
  (define-method-port
    core
    Mono.Security.Cryptography.BlockProcessor
    Core
    (System.Void System.Byte[] System.Int32 System.Int32)
    (System.Void System.Byte[]))
  (define-method-port
    final
    Mono.Security.Cryptography.BlockProcessor
    Final
    (System.Byte[])))
