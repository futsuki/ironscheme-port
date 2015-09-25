(library (system io mono-io)
  (export new
          is?
          mono-io?
          duplicate-handle?
          create-pipe?
          get-temp-path
          close?
          console-output
          console-input
          console-error)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.MonoIO a ...)))))
  (define (is? a) (clr-is System.IO.MonoIO a))
  (define (mono-io? a) (clr-is System.IO.MonoIO a))
  (define-method-port
    duplicate-handle?
    System.IO.MonoIO
    DuplicateHandle
    (static:
      System.Boolean
      System.IntPtr
      System.IntPtr
      System.IntPtr
      System.IntPtr&
      System.Int32
      System.Int32
      System.Int32))
  (define-method-port
    create-pipe?
    System.IO.MonoIO
    CreatePipe
    (static: System.Boolean System.IntPtr& System.IntPtr&))
  (define-method-port
    get-temp-path
    System.IO.MonoIO
    GetTempPath
    (static: System.Int32 System.String&))
  (define-method-port
    close?
    System.IO.MonoIO
    Close
    (static: System.Boolean System.IntPtr System.IO.MonoIOError&))
  (define-field-port
    console-output
    #f
    #f
    (static: property:)
    System.IO.MonoIO
    ConsoleOutput
    System.IntPtr)
  (define-field-port
    console-input
    #f
    #f
    (static: property:)
    System.IO.MonoIO
    ConsoleInput
    System.IntPtr)
  (define-field-port
    console-error
    #f
    #f
    (static: property:)
    System.IO.MonoIO
    ConsoleError
    System.IntPtr))
