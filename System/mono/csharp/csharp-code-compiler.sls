(library (mono csharp csharp-code-compiler)
  (export new
          is?
          csharp-code-compiler?
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
        ((_ a ...) #'(clr-new Mono.CSharp.CSharpCodeCompiler a ...)))))
  (define (is? a) (clr-is Mono.CSharp.CSharpCodeCompiler a))
  (define (csharp-code-compiler? a)
    (clr-is Mono.CSharp.CSharpCodeCompiler a))
  (define-method-port
    compile-assembly-from-dom-batch
    Mono.CSharp.CSharpCodeCompiler
    CompileAssemblyFromDomBatch
    (System.CodeDom.Compiler.CompilerResults
      System.CodeDom.Compiler.CompilerParameters
      System.CodeDom.CodeCompileUnit[]))
  (define-method-port
    compile-assembly-from-file
    Mono.CSharp.CSharpCodeCompiler
    CompileAssemblyFromFile
    (System.CodeDom.Compiler.CompilerResults
      System.CodeDom.Compiler.CompilerParameters
      System.String))
  (define-method-port
    compile-assembly-from-source
    Mono.CSharp.CSharpCodeCompiler
    CompileAssemblyFromSource
    (System.CodeDom.Compiler.CompilerResults
      System.CodeDom.Compiler.CompilerParameters
      System.String))
  (define-method-port
    compile-assembly-from-file-batch
    Mono.CSharp.CSharpCodeCompiler
    CompileAssemblyFromFileBatch
    (System.CodeDom.Compiler.CompilerResults
      System.CodeDom.Compiler.CompilerParameters
      System.String[]))
  (define-method-port
    compile-assembly-from-source-batch
    Mono.CSharp.CSharpCodeCompiler
    CompileAssemblyFromSourceBatch
    (System.CodeDom.Compiler.CompilerResults
      System.CodeDom.Compiler.CompilerParameters
      System.String[]))
  (define-method-port
    compile-assembly-from-dom
    Mono.CSharp.CSharpCodeCompiler
    CompileAssemblyFromDom
    (System.CodeDom.Compiler.CompilerResults
      System.CodeDom.Compiler.CompilerParameters
      System.CodeDom.CodeCompileUnit)))
