(library (unity-engine wwwform)
  (export new is? wwwform? add-binary-data add-field headers data)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.WWWForm a ...)))))
  (define (is? a) (clr-is UnityEngine.WWWForm a))
  (define (wwwform? a) (clr-is UnityEngine.WWWForm a))
  (define-method-port
    add-binary-data
    UnityEngine.WWWForm
    AddBinaryData
    (System.Void
      System.String
      System.Byte[]
      System.String
      System.String)
    (System.Void System.String System.Byte[])
    (System.Void System.String System.Byte[] System.String))
  (define-method-port
    add-field
    UnityEngine.WWWForm
    AddField
    (System.Void System.String System.Int32)
    (System.Void System.String System.String System.Text.Encoding)
    (System.Void System.String System.String))
  (define-field-port
    headers
    #f
    #f
    (property:)
    UnityEngine.WWWForm
    headers
    "System.Collections.Generic.Dictionary`2[[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]")
  (define-field-port
    data
    #f
    #f
    (property:)
    UnityEngine.WWWForm
    data
    System.Byte[]))
