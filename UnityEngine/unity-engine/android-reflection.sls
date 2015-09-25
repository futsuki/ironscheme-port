(library (unity-engine android-reflection)
  (export new
          is?
          android-reflection?
          get-field-member
          new-proxy-instance
          get-constructor-member
          get-method-member)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AndroidReflection a ...)))))
  (define (is? a) (clr-is UnityEngine.AndroidReflection a))
  (define (android-reflection? a)
    (clr-is UnityEngine.AndroidReflection a))
  (define-method-port
    get-field-member
    UnityEngine.AndroidReflection
    GetFieldMember
    (static:
      System.IntPtr
      System.IntPtr
      System.String
      System.String
      System.Boolean))
  (define-method-port
    new-proxy-instance
    UnityEngine.AndroidReflection
    NewProxyInstance
    (static: System.IntPtr System.Int32 System.IntPtr))
  (define-method-port
    get-constructor-member
    UnityEngine.AndroidReflection
    GetConstructorMember
    (static: System.IntPtr System.IntPtr System.String))
  (define-method-port
    get-method-member
    UnityEngine.AndroidReflection
    GetMethodMember
    (static:
      System.IntPtr
      System.IntPtr
      System.String
      System.String
      System.Boolean)))
