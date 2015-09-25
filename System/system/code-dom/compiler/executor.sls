(library (system code-dom compiler executor)
  (export is? executor? exec-wait-with-capture exec-wait)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.CodeDom.Compiler.Executor a))
  (define (executor? a) (clr-is System.CodeDom.Compiler.Executor a))
  (define-method-port
    exec-wait-with-capture
    System.CodeDom.Compiler.Executor
    ExecWaitWithCapture
    (static:
      System.Int32
      System.String
      System.CodeDom.Compiler.TempFileCollection
      System.String&
      System.String&)
    (static:
      System.Int32
      System.String
      System.String
      System.CodeDom.Compiler.TempFileCollection
      System.String&
      System.String&)
    (static:
      System.Int32
      System.IntPtr
      System.String
      System.CodeDom.Compiler.TempFileCollection
      System.String&
      System.String&)
    (static:
      System.Int32
      System.IntPtr
      System.String
      System.String
      System.CodeDom.Compiler.TempFileCollection
      System.String&
      System.String&))
  (define-method-port
    exec-wait
    System.CodeDom.Compiler.Executor
    ExecWait
    (static:
      System.Void
      System.String
      System.CodeDom.Compiler.TempFileCollection)))
