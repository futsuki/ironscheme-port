(library (system data odbc native-buffer)
  (export new
          is?
          native-buffer?
          dispose
          ensure-alloc
          alloc-buffer
          free-buffer
          handle-get
          handle-set!
          handle-update!
          size)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.Odbc.NativeBuffer a ...)))))
  (define (is? a) (clr-is System.Data.Odbc.NativeBuffer a))
  (define (native-buffer? a) (clr-is System.Data.Odbc.NativeBuffer a))
  (define-method-port
    dispose
    System.Data.Odbc.NativeBuffer
    Dispose
    (System.Void)
    (System.Void System.Boolean))
  (define-method-port
    ensure-alloc
    System.Data.Odbc.NativeBuffer
    EnsureAlloc
    (System.Void System.Int32))
  (define-method-port
    alloc-buffer
    System.Data.Odbc.NativeBuffer
    AllocBuffer
    (System.Void System.Int32))
  (define-method-port
    free-buffer
    System.Data.Odbc.NativeBuffer
    FreeBuffer
    (System.Void))
  (define-field-port
    handle-get
    handle-set!
    handle-update!
    (property:)
    System.Data.Odbc.NativeBuffer
    Handle
    System.IntPtr)
  (define-field-port
    size
    #f
    #f
    (property:)
    System.Data.Odbc.NativeBuffer
    Size
    System.Int32))
