(library (unity-engine -android-jnihelper)
  (export new
          is?
          -android-jnihelper?
          convert-to-jniarray
          convert-from-jniarray
          unbox
          create-java-runnable
          create-java-proxy
          unbox-array
          get-constructor-id
          box
          invoke-java-proxy-method
          get-signature
          delete-jniarg-array
          get-field-id
          create-jniarg-array
          get-method-id)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine._AndroidJNIHelper a ...)))))
  (define (is? a) (clr-is UnityEngine._AndroidJNIHelper a))
  (define (-android-jnihelper? a)
    (clr-is UnityEngine._AndroidJNIHelper a))
  (define-method-port
    convert-to-jniarray
    UnityEngine._AndroidJNIHelper
    ConvertToJNIArray
    (static: System.IntPtr System.Array))
  (define-method-port
    convert-from-jniarray
    UnityEngine._AndroidJNIHelper
    ConvertFromJNIArray)
  (define-method-port
    unbox
    UnityEngine._AndroidJNIHelper
    Unbox
    (static: System.Object UnityEngine.AndroidJavaObject))
  (define-method-port
    create-java-runnable
    UnityEngine._AndroidJNIHelper
    CreateJavaRunnable
    (static: System.IntPtr UnityEngine.AndroidJavaRunnable))
  (define-method-port
    create-java-proxy
    UnityEngine._AndroidJNIHelper
    CreateJavaProxy
    (static: System.IntPtr System.Int32 UnityEngine.AndroidJavaProxy))
  (define-method-port
    unbox-array
    UnityEngine._AndroidJNIHelper
    UnboxArray
    (static: System.Object UnityEngine.AndroidJavaObject))
  (define-method-port
    get-constructor-id
    UnityEngine._AndroidJNIHelper
    GetConstructorID
    (static: System.IntPtr System.IntPtr System.String)
    (static: System.IntPtr System.IntPtr System.Object[]))
  (define-method-port
    box
    UnityEngine._AndroidJNIHelper
    Box
    (static: UnityEngine.AndroidJavaObject System.Object))
  (define-method-port
    invoke-java-proxy-method
    UnityEngine._AndroidJNIHelper
    InvokeJavaProxyMethod
    (static:
      System.IntPtr
      UnityEngine.AndroidJavaProxy
      System.IntPtr
      System.IntPtr))
  (define-method-port
    get-signature
    UnityEngine._AndroidJNIHelper
    GetSignature
    (static: System.String System.Object[])
    (static: System.String System.Object))
  (define-method-port
    delete-jniarg-array
    UnityEngine._AndroidJNIHelper
    DeleteJNIArgArray
    (static: System.Void System.Object[] UnityEngine.jvalue[]))
  (define-method-port
    get-field-id
    UnityEngine._AndroidJNIHelper
    GetFieldID
    (static:
      System.IntPtr
      System.IntPtr
      System.String
      System.String
      System.Boolean))
  (define-method-port
    create-jniarg-array
    UnityEngine._AndroidJNIHelper
    CreateJNIArgArray
    (static: UnityEngine.jvalue[] System.Object[]))
  (define-method-port
    get-method-id
    UnityEngine._AndroidJNIHelper
    GetMethodID
    (static:
      System.IntPtr
      System.IntPtr
      System.String
      System.String
      System.Boolean)
    (static:
      System.IntPtr
      System.IntPtr
      System.String
      System.Object[]
      System.Boolean)))
