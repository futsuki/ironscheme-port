(library (system diagnostics stack-trace)
  (export new
          is?
          stack-trace?
          get-frame
          get-frames
          to-string
          methods-to-skip
          frame-count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Diagnostics.StackTrace a ...)))))
  (define (is? a) (clr-is System.Diagnostics.StackTrace a))
  (define (stack-trace? a) (clr-is System.Diagnostics.StackTrace a))
  (define-method-port
    get-frame
    System.Diagnostics.StackTrace
    GetFrame
    (System.Diagnostics.StackFrame System.Int32))
  (define-method-port
    get-frames
    System.Diagnostics.StackTrace
    GetFrames
    (System.Diagnostics.StackFrame[]))
  (define-method-port
    to-string
    System.Diagnostics.StackTrace
    ToString
    (System.String))
  (define-field-port
    methods-to-skip
    #f
    #f
    (static:)
    System.Diagnostics.StackTrace
    METHODS_TO_SKIP
    System.Int32)
  (define-field-port
    frame-count
    #f
    #f
    (property:)
    System.Diagnostics.StackTrace
    FrameCount
    System.Int32))
