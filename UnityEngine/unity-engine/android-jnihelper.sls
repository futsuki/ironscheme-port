(library (unity-engine android-jnihelper)
  (export is?
          android-jnihelper?
          convert-to-jniarray
          convert-from-jniarray
          create-java-runnable
          create-java-proxy
          delete-jniarg-array
          get-constructor-id
          get-signature
          get-field-id
          create-jniarg-array
          get-method-id
          debug?-get
          debug?-set!
          debug?-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.AndroidJNIHelper a))
  (define (android-jnihelper? a)
    (clr-is UnityEngine.AndroidJNIHelper a))
  (define-method-port
    convert-to-jniarray
    UnityEngine.AndroidJNIHelper
    ConvertToJNIArray
    (static: System.IntPtr System.Array))
  (define-method-port
    convert-from-jniarray
    UnityEngine.AndroidJNIHelper
    ConvertFromJNIArray)
  (define-method-port
    create-java-runnable
    UnityEngine.AndroidJNIHelper
    CreateJavaRunnable
    (static: System.IntPtr UnityEngine.AndroidJavaRunnable))
  (define-method-port
    create-java-proxy
    UnityEngine.AndroidJNIHelper
    CreateJavaProxy
    (static: System.IntPtr UnityEngine.AndroidJavaProxy))
  (define-method-port
    delete-jniarg-array
    UnityEngine.AndroidJNIHelper
    DeleteJNIArgArray
    (static: System.Void System.Object[] UnityEngine.jvalue[]))
  (define-method-port
    get-constructor-id
    UnityEngine.AndroidJNIHelper
    GetConstructorID
    (static: System.IntPtr System.IntPtr System.Object[])
    (static: System.IntPtr System.IntPtr System.String)
    (static: System.IntPtr System.IntPtr))
  (define-method-port
    get-signature
    UnityEngine.AndroidJNIHelper
    GetSignature
    (static: System.String System.Object[])
    (static: System.String System.Object))
  (define-method-port
    get-field-id
    UnityEngine.AndroidJNIHelper
    GetFieldID
    (static:
      System.IntPtr
      System.IntPtr
      System.String
      System.String
      System.Boolean)
    (static: System.IntPtr System.IntPtr System.String)
    (static: System.IntPtr System.IntPtr System.String System.String))
  (define-method-port
    create-jniarg-array
    UnityEngine.AndroidJNIHelper
    CreateJNIArgArray
    (static: UnityEngine.jvalue[] System.Object[]))
  (define-method-port
    get-method-id
    UnityEngine.AndroidJNIHelper
    GetMethodID
    (static:
      System.IntPtr
      System.IntPtr
      System.String
      System.Object[]
      System.Boolean)
    (static:
      System.IntPtr
      System.IntPtr
      System.String
      System.String
      System.Boolean)
    (static: System.IntPtr System.IntPtr System.String)
    (static: System.IntPtr System.IntPtr System.String System.String))
  (define-field-port
    debug?-get
    debug?-set!
    debug?-update!
    (static: property:)
    UnityEngine.AndroidJNIHelper
    debug
    System.Boolean))
