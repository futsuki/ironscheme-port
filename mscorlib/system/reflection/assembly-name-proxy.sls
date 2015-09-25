(library (system reflection assembly-name-proxy)
  (export new is? assembly-name-proxy? get-assembly-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Reflection.AssemblyNameProxy a ...)))))
  (define (is? a) (clr-is System.Reflection.AssemblyNameProxy a))
  (define (assembly-name-proxy? a)
    (clr-is System.Reflection.AssemblyNameProxy a))
  (define-method-port
    get-assembly-name
    System.Reflection.AssemblyNameProxy
    GetAssemblyName
    (System.Reflection.AssemblyName System.String)))
