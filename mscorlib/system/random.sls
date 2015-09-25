(library (system random)
  (export new is? random? next-double next next-bytes)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e () ((_ a ...) #'(clr-new System.Random a ...)))))
  (define (is? a) (clr-is System.Random a))
  (define (random? a) (clr-is System.Random a))
  (define-method-port
    next-double
    System.Random
    NextDouble
    (System.Double))
  (define-method-port
    next
    System.Random
    Next
    (System.Int32 System.Int32 System.Int32)
    (System.Int32 System.Int32)
    (System.Int32))
  (define-method-port
    next-bytes
    System.Random
    NextBytes
    (System.Void System.Byte[])))
