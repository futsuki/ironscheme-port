(library (system diagnostics stack-frame)
  (export new
          is?
          stack-frame?
          get-iloffset
          get-file-name
          get-file-column-number
          get-method
          get-file-line-number
          get-native-offset
          to-string
          offset-unknown)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Diagnostics.StackFrame a ...)))))
  (define (is? a) (clr-is System.Diagnostics.StackFrame a))
  (define (stack-frame? a) (clr-is System.Diagnostics.StackFrame a))
  (define-method-port
    get-iloffset
    System.Diagnostics.StackFrame
    GetILOffset
    (System.Int32))
  (define-method-port
    get-file-name
    System.Diagnostics.StackFrame
    GetFileName
    (System.String))
  (define-method-port
    get-file-column-number
    System.Diagnostics.StackFrame
    GetFileColumnNumber
    (System.Int32))
  (define-method-port
    get-method
    System.Diagnostics.StackFrame
    GetMethod
    (System.Reflection.MethodBase))
  (define-method-port
    get-file-line-number
    System.Diagnostics.StackFrame
    GetFileLineNumber
    (System.Int32))
  (define-method-port
    get-native-offset
    System.Diagnostics.StackFrame
    GetNativeOffset
    (System.Int32))
  (define-method-port
    to-string
    System.Diagnostics.StackFrame
    ToString
    (System.String))
  (define-field-port
    offset-unknown
    #f
    #f
    (static:)
    System.Diagnostics.StackFrame
    OFFSET_UNKNOWN
    System.Int32))
