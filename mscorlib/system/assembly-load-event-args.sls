(library (system assembly-load-event-args)
  (export new is? assembly-load-event-args? loaded-assembly)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.AssemblyLoadEventArgs a ...)))))
  (define (is? a) (clr-is System.AssemblyLoadEventArgs a))
  (define (assembly-load-event-args? a)
    (clr-is System.AssemblyLoadEventArgs a))
  (define-field-port
    loaded-assembly
    #f
    #f
    (property:)
    System.AssemblyLoadEventArgs
    LoadedAssembly
    System.Reflection.Assembly))
