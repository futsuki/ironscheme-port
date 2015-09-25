(library (system runtime compiler-services call-conv-cdecl)
  (export new is? call-conv-cdecl?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.CallConvCdecl
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.CallConvCdecl a))
  (define (call-conv-cdecl? a)
    (clr-is System.Runtime.CompilerServices.CallConvCdecl a)))
