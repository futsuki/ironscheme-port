(library (system reflection assembly-algorithm-id-attribute)
  (export new is? assembly-algorithm-id-attribute? algorithm-id)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.AssemblyAlgorithmIdAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Reflection.AssemblyAlgorithmIdAttribute a))
  (define (assembly-algorithm-id-attribute? a)
    (clr-is System.Reflection.AssemblyAlgorithmIdAttribute a))
  (define-field-port
    algorithm-id
    #f
    #f
    (property:)
    System.Reflection.AssemblyAlgorithmIdAttribute
    AlgorithmId
    System.UInt32))
