(library (system runtime compiler-services call-conv-thiscall)
  (export new is? call-conv-thiscall?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.CallConvThiscall
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.CallConvThiscall a))
  (define (call-conv-thiscall? a)
    (clr-is System.Runtime.CompilerServices.CallConvThiscall a)))
