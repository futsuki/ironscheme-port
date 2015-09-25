(library (system runtime compiler-services call-conv-fastcall)
  (export new is? call-conv-fastcall?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.CallConvFastcall
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.CallConvFastcall a))
  (define (call-conv-fastcall? a)
    (clr-is System.Runtime.CompilerServices.CallConvFastcall a)))
