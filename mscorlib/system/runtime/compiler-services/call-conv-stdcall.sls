(library (system runtime compiler-services call-conv-stdcall)
  (export new is? call-conv-stdcall?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.CallConvStdcall
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.CallConvStdcall a))
  (define (call-conv-stdcall? a)
    (clr-is System.Runtime.CompilerServices.CallConvStdcall a)))
