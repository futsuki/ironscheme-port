(library (system reflection assembly-default-alias-attribute)
  (export new is? assembly-default-alias-attribute? default-alias)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.AssemblyDefaultAliasAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Reflection.AssemblyDefaultAliasAttribute a))
  (define (assembly-default-alias-attribute? a)
    (clr-is System.Reflection.AssemblyDefaultAliasAttribute a))
  (define-field-port
    default-alias
    #f
    #f
    (property:)
    System.Reflection.AssemblyDefaultAliasAttribute
    DefaultAlias
    System.String))
