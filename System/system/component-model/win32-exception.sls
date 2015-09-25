(library (system component-model win32-exception)
  (export new is? win32-exception? get-object-data native-error-code)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.Win32Exception a ...)))))
  (define (is? a) (clr-is System.ComponentModel.Win32Exception a))
  (define (win32-exception? a)
    (clr-is System.ComponentModel.Win32Exception a))
  (define-method-port
    get-object-data
    System.ComponentModel.Win32Exception
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    native-error-code
    #f
    #f
    (property:)
    System.ComponentModel.Win32Exception
    NativeErrorCode
    System.Int32))
