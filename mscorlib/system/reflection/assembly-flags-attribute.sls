(library (system reflection assembly-flags-attribute)
  (export new is? assembly-flags-attribute? flags assembly-flags)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Reflection.AssemblyFlagsAttribute a ...)))))
  (define (is? a) (clr-is System.Reflection.AssemblyFlagsAttribute a))
  (define (assembly-flags-attribute? a)
    (clr-is System.Reflection.AssemblyFlagsAttribute a))
  (define-field-port
    flags
    #f
    #f
    (property:)
    System.Reflection.AssemblyFlagsAttribute
    Flags
    System.UInt32)
  (define-field-port
    assembly-flags
    #f
    #f
    (property:)
    System.Reflection.AssemblyFlagsAttribute
    AssemblyFlags
    System.Int32))
