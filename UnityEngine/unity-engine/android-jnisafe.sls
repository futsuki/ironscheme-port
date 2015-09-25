(library (unity-engine android-jnisafe)
  (export new
          is?
          android-jnisafe?
          get-static-object-field
          get-field-id
          set-double-field
          set-int-field
          get-static-int-field
          get-byte-field
          from-byte-array
          get-static-double-field
          from-boolean-array
          get-object-array-element
          to-object-array
          call-byte-method
          delete-global-ref
          set-long-field
          call-void-method
          call-static-short-method
          get-object-field
          from-int-array
          get-static-char-field
          set-static-long-field
          to-byte-array
          set-object-field
          new-string-utf
          from-char-array
          to-long-array
          call-static-object-method
          get-static-long-field
          call-char-method
          set-byte-field
          get-static-field-id
          set-static-int-field
          get-long-field
          call-static-double-method
          get-static-float-field
          from-double-array
          get-string-utfchars
          call-static-byte-method
          call-short-method
          get-static-boolean-field?
          call-float-method
          set-boolean-field
          call-static-void-method
          set-static-char-field
          to-boolean-array
          set-float-field
          to-double-array
          from-short-array
          get-int-field
          from-object-array
          set-char-field
          set-static-boolean-field
          to-float-array
          get-float-field
          check-exception
          get-char-field
          from-long-array
          set-static-float-field
          find-class
          from-reflected-field
          get-object-class
          get-static-method-id
          get-method-id
          set-static-byte-field
          set-static-string-field
          to-char-array
          get-static-short-field
          call-object-method
          get-static-string-field
          call-static-char-method
          call-static-string-method
          set-static-double-field
          call-static-int-method
          call-double-method
          get-array-length
          call-static-float-method
          to-int-array
          set-short-field
          call-static-long-method
          call-boolean-method?
          get-boolean-field?
          call-int-method
          from-reflected-method
          call-long-method
          call-string-method
          to-short-array
          get-short-field
          get-string-field
          new-object
          set-static-short-field
          set-string-field
          call-static-boolean-method?
          delete-local-ref
          set-static-object-field
          get-double-field
          from-float-array
          get-static-byte-field)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AndroidJNISafe a ...)))))
  (define (is? a) (clr-is UnityEngine.AndroidJNISafe a))
  (define (android-jnisafe? a) (clr-is UnityEngine.AndroidJNISafe a))
  (define-method-port
    get-static-object-field
    UnityEngine.AndroidJNISafe
    GetStaticObjectField
    (static: System.IntPtr System.IntPtr System.IntPtr))
  (define-method-port
    get-field-id
    UnityEngine.AndroidJNISafe
    GetFieldID
    (static: System.IntPtr System.IntPtr System.String System.String))
  (define-method-port
    set-double-field
    UnityEngine.AndroidJNISafe
    SetDoubleField
    (static: System.Void System.IntPtr System.IntPtr System.Double))
  (define-method-port
    set-int-field
    UnityEngine.AndroidJNISafe
    SetIntField
    (static: System.Void System.IntPtr System.IntPtr System.Int32))
  (define-method-port
    get-static-int-field
    UnityEngine.AndroidJNISafe
    GetStaticIntField
    (static: System.Int32 System.IntPtr System.IntPtr))
  (define-method-port
    get-byte-field
    UnityEngine.AndroidJNISafe
    GetByteField
    (static: System.Byte System.IntPtr System.IntPtr))
  (define-method-port
    from-byte-array
    UnityEngine.AndroidJNISafe
    FromByteArray
    (static: System.Byte[] System.IntPtr))
  (define-method-port
    get-static-double-field
    UnityEngine.AndroidJNISafe
    GetStaticDoubleField
    (static: System.Double System.IntPtr System.IntPtr))
  (define-method-port
    from-boolean-array
    UnityEngine.AndroidJNISafe
    FromBooleanArray
    (static: System.Boolean[] System.IntPtr))
  (define-method-port
    get-object-array-element
    UnityEngine.AndroidJNISafe
    GetObjectArrayElement
    (static: System.IntPtr System.IntPtr System.Int32))
  (define-method-port
    to-object-array
    UnityEngine.AndroidJNISafe
    ToObjectArray
    (static: System.IntPtr System.IntPtr[] System.IntPtr)
    (static: System.IntPtr System.IntPtr[]))
  (define-method-port
    call-byte-method
    UnityEngine.AndroidJNISafe
    CallByteMethod
    (static:
      System.Byte
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    delete-global-ref
    UnityEngine.AndroidJNISafe
    DeleteGlobalRef
    (static: System.Void System.IntPtr))
  (define-method-port
    set-long-field
    UnityEngine.AndroidJNISafe
    SetLongField
    (static: System.Void System.IntPtr System.IntPtr System.Int64))
  (define-method-port
    call-void-method
    UnityEngine.AndroidJNISafe
    CallVoidMethod
    (static:
      System.Void
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    call-static-short-method
    UnityEngine.AndroidJNISafe
    CallStaticShortMethod
    (static:
      System.Int16
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    get-object-field
    UnityEngine.AndroidJNISafe
    GetObjectField
    (static: System.IntPtr System.IntPtr System.IntPtr))
  (define-method-port
    from-int-array
    UnityEngine.AndroidJNISafe
    FromIntArray
    (static: System.Int32[] System.IntPtr))
  (define-method-port
    get-static-char-field
    UnityEngine.AndroidJNISafe
    GetStaticCharField
    (static: System.Char System.IntPtr System.IntPtr))
  (define-method-port
    set-static-long-field
    UnityEngine.AndroidJNISafe
    SetStaticLongField
    (static: System.Void System.IntPtr System.IntPtr System.Int64))
  (define-method-port
    to-byte-array
    UnityEngine.AndroidJNISafe
    ToByteArray
    (static: System.IntPtr System.Byte[]))
  (define-method-port
    set-object-field
    UnityEngine.AndroidJNISafe
    SetObjectField
    (static: System.Void System.IntPtr System.IntPtr System.IntPtr))
  (define-method-port
    new-string-utf
    UnityEngine.AndroidJNISafe
    NewStringUTF
    (static: System.IntPtr System.String))
  (define-method-port
    from-char-array
    UnityEngine.AndroidJNISafe
    FromCharArray
    (static: System.Char[] System.IntPtr))
  (define-method-port
    to-long-array
    UnityEngine.AndroidJNISafe
    ToLongArray
    (static: System.IntPtr System.Int64[]))
  (define-method-port
    call-static-object-method
    UnityEngine.AndroidJNISafe
    CallStaticObjectMethod
    (static:
      System.IntPtr
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    get-static-long-field
    UnityEngine.AndroidJNISafe
    GetStaticLongField
    (static: System.Int64 System.IntPtr System.IntPtr))
  (define-method-port
    call-char-method
    UnityEngine.AndroidJNISafe
    CallCharMethod
    (static:
      System.Char
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    set-byte-field
    UnityEngine.AndroidJNISafe
    SetByteField
    (static: System.Void System.IntPtr System.IntPtr System.Byte))
  (define-method-port
    get-static-field-id
    UnityEngine.AndroidJNISafe
    GetStaticFieldID
    (static: System.IntPtr System.IntPtr System.String System.String))
  (define-method-port
    set-static-int-field
    UnityEngine.AndroidJNISafe
    SetStaticIntField
    (static: System.Void System.IntPtr System.IntPtr System.Int32))
  (define-method-port
    get-long-field
    UnityEngine.AndroidJNISafe
    GetLongField
    (static: System.Int64 System.IntPtr System.IntPtr))
  (define-method-port
    call-static-double-method
    UnityEngine.AndroidJNISafe
    CallStaticDoubleMethod
    (static:
      System.Double
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    get-static-float-field
    UnityEngine.AndroidJNISafe
    GetStaticFloatField
    (static: System.Single System.IntPtr System.IntPtr))
  (define-method-port
    from-double-array
    UnityEngine.AndroidJNISafe
    FromDoubleArray
    (static: System.Double[] System.IntPtr))
  (define-method-port
    get-string-utfchars
    UnityEngine.AndroidJNISafe
    GetStringUTFChars
    (static: System.String System.IntPtr))
  (define-method-port
    call-static-byte-method
    UnityEngine.AndroidJNISafe
    CallStaticByteMethod
    (static:
      System.Byte
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    call-short-method
    UnityEngine.AndroidJNISafe
    CallShortMethod
    (static:
      System.Int16
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    get-static-boolean-field?
    UnityEngine.AndroidJNISafe
    GetStaticBooleanField
    (static: System.Boolean System.IntPtr System.IntPtr))
  (define-method-port
    call-float-method
    UnityEngine.AndroidJNISafe
    CallFloatMethod
    (static:
      System.Single
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    set-boolean-field
    UnityEngine.AndroidJNISafe
    SetBooleanField
    (static: System.Void System.IntPtr System.IntPtr System.Boolean))
  (define-method-port
    call-static-void-method
    UnityEngine.AndroidJNISafe
    CallStaticVoidMethod
    (static:
      System.Void
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    set-static-char-field
    UnityEngine.AndroidJNISafe
    SetStaticCharField
    (static: System.Void System.IntPtr System.IntPtr System.Char))
  (define-method-port
    to-boolean-array
    UnityEngine.AndroidJNISafe
    ToBooleanArray
    (static: System.IntPtr System.Boolean[]))
  (define-method-port
    set-float-field
    UnityEngine.AndroidJNISafe
    SetFloatField
    (static: System.Void System.IntPtr System.IntPtr System.Single))
  (define-method-port
    to-double-array
    UnityEngine.AndroidJNISafe
    ToDoubleArray
    (static: System.IntPtr System.Double[]))
  (define-method-port
    from-short-array
    UnityEngine.AndroidJNISafe
    FromShortArray
    (static: System.Int16[] System.IntPtr))
  (define-method-port
    get-int-field
    UnityEngine.AndroidJNISafe
    GetIntField
    (static: System.Int32 System.IntPtr System.IntPtr))
  (define-method-port
    from-object-array
    UnityEngine.AndroidJNISafe
    FromObjectArray
    (static: System.IntPtr[] System.IntPtr))
  (define-method-port
    set-char-field
    UnityEngine.AndroidJNISafe
    SetCharField
    (static: System.Void System.IntPtr System.IntPtr System.Char))
  (define-method-port
    set-static-boolean-field
    UnityEngine.AndroidJNISafe
    SetStaticBooleanField
    (static: System.Void System.IntPtr System.IntPtr System.Boolean))
  (define-method-port
    to-float-array
    UnityEngine.AndroidJNISafe
    ToFloatArray
    (static: System.IntPtr System.Single[]))
  (define-method-port
    get-float-field
    UnityEngine.AndroidJNISafe
    GetFloatField
    (static: System.Single System.IntPtr System.IntPtr))
  (define-method-port
    check-exception
    UnityEngine.AndroidJNISafe
    CheckException
    (static: System.Void))
  (define-method-port
    get-char-field
    UnityEngine.AndroidJNISafe
    GetCharField
    (static: System.Char System.IntPtr System.IntPtr))
  (define-method-port
    from-long-array
    UnityEngine.AndroidJNISafe
    FromLongArray
    (static: System.Int64[] System.IntPtr))
  (define-method-port
    set-static-float-field
    UnityEngine.AndroidJNISafe
    SetStaticFloatField
    (static: System.Void System.IntPtr System.IntPtr System.Single))
  (define-method-port
    find-class
    UnityEngine.AndroidJNISafe
    FindClass
    (static: System.IntPtr System.String))
  (define-method-port
    from-reflected-field
    UnityEngine.AndroidJNISafe
    FromReflectedField
    (static: System.IntPtr System.IntPtr))
  (define-method-port
    get-object-class
    UnityEngine.AndroidJNISafe
    GetObjectClass
    (static: System.IntPtr System.IntPtr))
  (define-method-port
    get-static-method-id
    UnityEngine.AndroidJNISafe
    GetStaticMethodID
    (static: System.IntPtr System.IntPtr System.String System.String))
  (define-method-port
    get-method-id
    UnityEngine.AndroidJNISafe
    GetMethodID
    (static: System.IntPtr System.IntPtr System.String System.String))
  (define-method-port
    set-static-byte-field
    UnityEngine.AndroidJNISafe
    SetStaticByteField
    (static: System.Void System.IntPtr System.IntPtr System.Byte))
  (define-method-port
    set-static-string-field
    UnityEngine.AndroidJNISafe
    SetStaticStringField
    (static: System.Void System.IntPtr System.IntPtr System.String))
  (define-method-port
    to-char-array
    UnityEngine.AndroidJNISafe
    ToCharArray
    (static: System.IntPtr System.Char[]))
  (define-method-port
    get-static-short-field
    UnityEngine.AndroidJNISafe
    GetStaticShortField
    (static: System.Int16 System.IntPtr System.IntPtr))
  (define-method-port
    call-object-method
    UnityEngine.AndroidJNISafe
    CallObjectMethod
    (static:
      System.IntPtr
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    get-static-string-field
    UnityEngine.AndroidJNISafe
    GetStaticStringField
    (static: System.String System.IntPtr System.IntPtr))
  (define-method-port
    call-static-char-method
    UnityEngine.AndroidJNISafe
    CallStaticCharMethod
    (static:
      System.Char
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    call-static-string-method
    UnityEngine.AndroidJNISafe
    CallStaticStringMethod
    (static:
      System.String
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    set-static-double-field
    UnityEngine.AndroidJNISafe
    SetStaticDoubleField
    (static: System.Void System.IntPtr System.IntPtr System.Double))
  (define-method-port
    call-static-int-method
    UnityEngine.AndroidJNISafe
    CallStaticIntMethod
    (static:
      System.Int32
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    call-double-method
    UnityEngine.AndroidJNISafe
    CallDoubleMethod
    (static:
      System.Double
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    get-array-length
    UnityEngine.AndroidJNISafe
    GetArrayLength
    (static: System.Int32 System.IntPtr))
  (define-method-port
    call-static-float-method
    UnityEngine.AndroidJNISafe
    CallStaticFloatMethod
    (static:
      System.Single
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    to-int-array
    UnityEngine.AndroidJNISafe
    ToIntArray
    (static: System.IntPtr System.Int32[]))
  (define-method-port
    set-short-field
    UnityEngine.AndroidJNISafe
    SetShortField
    (static: System.Void System.IntPtr System.IntPtr System.Int16))
  (define-method-port
    call-static-long-method
    UnityEngine.AndroidJNISafe
    CallStaticLongMethod
    (static:
      System.Int64
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    call-boolean-method?
    UnityEngine.AndroidJNISafe
    CallBooleanMethod
    (static:
      System.Boolean
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    get-boolean-field?
    UnityEngine.AndroidJNISafe
    GetBooleanField
    (static: System.Boolean System.IntPtr System.IntPtr))
  (define-method-port
    call-int-method
    UnityEngine.AndroidJNISafe
    CallIntMethod
    (static:
      System.Int32
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    from-reflected-method
    UnityEngine.AndroidJNISafe
    FromReflectedMethod
    (static: System.IntPtr System.IntPtr))
  (define-method-port
    call-long-method
    UnityEngine.AndroidJNISafe
    CallLongMethod
    (static:
      System.Int64
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    call-string-method
    UnityEngine.AndroidJNISafe
    CallStringMethod
    (static:
      System.String
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    to-short-array
    UnityEngine.AndroidJNISafe
    ToShortArray
    (static: System.IntPtr System.Int16[]))
  (define-method-port
    get-short-field
    UnityEngine.AndroidJNISafe
    GetShortField
    (static: System.Int16 System.IntPtr System.IntPtr))
  (define-method-port
    get-string-field
    UnityEngine.AndroidJNISafe
    GetStringField
    (static: System.String System.IntPtr System.IntPtr))
  (define-method-port
    new-object
    UnityEngine.AndroidJNISafe
    NewObject
    (static:
      System.IntPtr
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    set-static-short-field
    UnityEngine.AndroidJNISafe
    SetStaticShortField
    (static: System.Void System.IntPtr System.IntPtr System.Int16))
  (define-method-port
    set-string-field
    UnityEngine.AndroidJNISafe
    SetStringField
    (static: System.Void System.IntPtr System.IntPtr System.String))
  (define-method-port
    call-static-boolean-method?
    UnityEngine.AndroidJNISafe
    CallStaticBooleanMethod
    (static:
      System.Boolean
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    delete-local-ref
    UnityEngine.AndroidJNISafe
    DeleteLocalRef
    (static: System.Void System.IntPtr))
  (define-method-port
    set-static-object-field
    UnityEngine.AndroidJNISafe
    SetStaticObjectField
    (static: System.Void System.IntPtr System.IntPtr System.IntPtr))
  (define-method-port
    get-double-field
    UnityEngine.AndroidJNISafe
    GetDoubleField
    (static: System.Double System.IntPtr System.IntPtr))
  (define-method-port
    from-float-array
    UnityEngine.AndroidJNISafe
    FromFloatArray
    (static: System.Single[] System.IntPtr))
  (define-method-port
    get-static-byte-field
    UnityEngine.AndroidJNISafe
    GetStaticByteField
    (static: System.Byte System.IntPtr System.IntPtr)))
