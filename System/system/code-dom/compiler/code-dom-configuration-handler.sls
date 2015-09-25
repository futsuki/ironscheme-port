(library (system code-dom compiler code-dom-configuration-handler)
  (export new
          is?
          code-dom-configuration-handler?
          compilers
          compiler-infos)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.Compiler.CodeDomConfigurationHandler
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.Compiler.CodeDomConfigurationHandler a))
  (define (code-dom-configuration-handler? a)
    (clr-is System.CodeDom.Compiler.CodeDomConfigurationHandler a))
  (define-field-port
    compilers
    #f
    #f
    (property:)
    System.CodeDom.Compiler.CodeDomConfigurationHandler
    Compilers
    System.CodeDom.Compiler.CompilerCollection)
  (define-field-port
    compiler-infos
    #f
    #f
    (property:)
    System.CodeDom.Compiler.CodeDomConfigurationHandler
    CompilerInfos
    System.CodeDom.Compiler.CompilerInfo[]))
