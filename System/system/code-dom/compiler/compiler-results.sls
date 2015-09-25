(library (system code-dom compiler compiler-results)
  (export new
          is?
          compiler-results?
          compiled-assembly-get
          compiled-assembly-set!
          compiled-assembly-update!
          errors
          evidence-get
          evidence-set!
          evidence-update!
          native-compiler-return-value-get
          native-compiler-return-value-set!
          native-compiler-return-value-update!
          output
          path-to-assembly-get
          path-to-assembly-set!
          path-to-assembly-update!
          temp-files-get
          temp-files-set!
          temp-files-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.Compiler.CompilerResults a ...)))))
  (define (is? a) (clr-is System.CodeDom.Compiler.CompilerResults a))
  (define (compiler-results? a)
    (clr-is System.CodeDom.Compiler.CompilerResults a))
  (define-field-port
    compiled-assembly-get
    compiled-assembly-set!
    compiled-assembly-update!
    (property:)
    System.CodeDom.Compiler.CompilerResults
    CompiledAssembly
    System.Reflection.Assembly)
  (define-field-port
    errors
    #f
    #f
    (property:)
    System.CodeDom.Compiler.CompilerResults
    Errors
    System.CodeDom.Compiler.CompilerErrorCollection)
  (define-field-port
    evidence-get
    evidence-set!
    evidence-update!
    (property:)
    System.CodeDom.Compiler.CompilerResults
    Evidence
    System.Security.Policy.Evidence)
  (define-field-port
    native-compiler-return-value-get
    native-compiler-return-value-set!
    native-compiler-return-value-update!
    (property:)
    System.CodeDom.Compiler.CompilerResults
    NativeCompilerReturnValue
    System.Int32)
  (define-field-port
    output
    #f
    #f
    (property:)
    System.CodeDom.Compiler.CompilerResults
    Output
    System.Collections.Specialized.StringCollection)
  (define-field-port
    path-to-assembly-get
    path-to-assembly-set!
    path-to-assembly-update!
    (property:)
    System.CodeDom.Compiler.CompilerResults
    PathToAssembly
    System.String)
  (define-field-port
    temp-files-get
    temp-files-set!
    temp-files-update!
    (property:)
    System.CodeDom.Compiler.CompilerResults
    TempFiles
    System.CodeDom.Compiler.TempFileCollection))
