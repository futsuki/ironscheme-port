(library (microsoft visual-basic vbcode-compiler)
  (export new
          is?
          vbcode-compiler?
          compile-assembly-from-dom-batch
          compile-assembly-from-file
          compile-assembly-from-source
          compile-assembly-from-file-batch
          compile-assembly-from-source-batch
          compile-assembly-from-dom)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Microsoft.VisualBasic.VBCodeCompiler a ...)))))
  (define (is? a) (clr-is Microsoft.VisualBasic.VBCodeCompiler a))
  (define (vbcode-compiler? a)
    (clr-is Microsoft.VisualBasic.VBCodeCompiler a))
  (define-method-port
    compile-assembly-from-dom-batch
    Microsoft.VisualBasic.VBCodeCompiler
    CompileAssemblyFromDomBatch
    (System.CodeDom.Compiler.CompilerResults
      System.CodeDom.Compiler.CompilerParameters
      System.CodeDom.CodeCompileUnit[]))
  (define-method-port
    compile-assembly-from-file
    Microsoft.VisualBasic.VBCodeCompiler
    CompileAssemblyFromFile
    (System.CodeDom.Compiler.CompilerResults
      System.CodeDom.Compiler.CompilerParameters
      System.String))
  (define-method-port
    compile-assembly-from-source
    Microsoft.VisualBasic.VBCodeCompiler
    CompileAssemblyFromSource
    (System.CodeDom.Compiler.CompilerResults
      System.CodeDom.Compiler.CompilerParameters
      System.String))
  (define-method-port
    compile-assembly-from-file-batch
    Microsoft.VisualBasic.VBCodeCompiler
    CompileAssemblyFromFileBatch
    (System.CodeDom.Compiler.CompilerResults
      System.CodeDom.Compiler.CompilerParameters
      System.String[]))
  (define-method-port
    compile-assembly-from-source-batch
    Microsoft.VisualBasic.VBCodeCompiler
    CompileAssemblyFromSourceBatch
    (System.CodeDom.Compiler.CompilerResults
      System.CodeDom.Compiler.CompilerParameters
      System.String[]))
  (define-method-port
    compile-assembly-from-dom
    Microsoft.VisualBasic.VBCodeCompiler
    CompileAssemblyFromDom
    (System.CodeDom.Compiler.CompilerResults
      System.CodeDom.Compiler.CompilerParameters
      System.CodeDom.CodeCompileUnit)))
