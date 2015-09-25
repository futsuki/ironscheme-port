(library (unity-engine il2-cppstruct-alignment-attribute)
  (export new
          is?
          il2-cppstruct-alignment-attribute?
          align-get
          align-set!
          align-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.IL2CPPStructAlignmentAttribute
             a
             ...)))))
  (define (is? a) (clr-is UnityEngine.IL2CPPStructAlignmentAttribute a))
  (define (il2-cppstruct-alignment-attribute? a)
    (clr-is UnityEngine.IL2CPPStructAlignmentAttribute a))
  (define-field-port
    align-get
    align-set!
    align-update!
    ()
    UnityEngine.IL2CPPStructAlignmentAttribute
    Align
    System.Int32))
