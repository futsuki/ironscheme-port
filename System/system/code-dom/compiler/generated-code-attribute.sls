(library (system code-dom compiler generated-code-attribute)
  (export new is? generated-code-attribute? tool version)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.Compiler.GeneratedCodeAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.Compiler.GeneratedCodeAttribute a))
  (define (generated-code-attribute? a)
    (clr-is System.CodeDom.Compiler.GeneratedCodeAttribute a))
  (define-field-port
    tool
    #f
    #f
    (property:)
    System.CodeDom.Compiler.GeneratedCodeAttribute
    Tool
    System.String)
  (define-field-port
    version
    #f
    #f
    (property:)
    System.CodeDom.Compiler.GeneratedCodeAttribute
    Version
    System.String))
