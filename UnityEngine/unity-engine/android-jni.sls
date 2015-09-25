(library (unity-engine android-jni)
  (export is?
          android-jni?
          get-static-boolean-field?
          from-short-array
          set-short-field
          new-byte-array
          exception-describe
          call-void-method
          new-global-ref
          from-byte-array
          new-string-utf
          from-int-array
          get-long-array-element
          set-static-char-field
          from-reflected-method
          set-static-double-field
          call-static-boolean-method?
          get-static-short-field
          get-int-field
          get-static-byte-field
          new-double-array
          get-object-array-element
          exception-clear
          get-byte-array-element
          new-local-ref
          is-instance-of?
          set-char-field
          to-char-array
          get-boolean-field?
          from-boolean-array
          set-int-field
          set-boolean-array-element
          attach-current-thread
          set-static-object-field
          call-short-method
          to-long-array
          call-static-char-method
          get-field-id
          set-static-int-field
          call-static-long-method
          new-object-array
          set-static-short-field
          get-static-string-field
          throw
          call-static-byte-method
          get-array-length
          new-boolean-array
          set-static-long-field
          get-char-array-element
          set-byte-array-element
          to-int-array
          get-static-method-id
          set-short-array-element
          call-boolean-method?
          is-assignable-from?
          from-char-array
          to-double-array
          new-long-array
          get-static-field-id
          new-float-array
          new-short-array
          from-object-array
          new-char-array
          set-int-array-element
          set-string-field
          set-boolean-field
          get-object-class
          get-static-char-field
          from-double-array
          call-byte-method
          call-double-method
          get-float-field
          get-static-double-field
          get-static-long-field
          fatal-error
          is-same-object?
          to-reflected-field
          to-object-array
          set-static-boolean-field
          call-long-method
          set-char-array-element
          throw-new
          set-double-array-element
          call-static-short-method
          get-float-array-element
          alloc-object
          new-object
          push-local-frame
          get-string-utflength
          get-byte-field
          set-float-array-element
          get-static-int-field
          get-static-object-field
          call-static-float-method
          call-static-double-method
          to-float-array
          get-string-field
          to-boolean-array
          get-superclass
          set-long-field
          set-long-array-element
          from-float-array
          to-short-array
          call-int-method
          call-static-int-method
          call-char-method
          get-double-array-element
          to-reflected-method
          set-float-field
          get-int-array-element
          delete-local-ref
          set-object-array-element
          ensure-local-capacity
          set-static-byte-field
          get-short-array-element
          get-short-field
          new-int-array
          find-class
          set-static-string-field
          get-static-float-field
          set-double-field
          get-double-field
          from-long-array
          call-object-method
          call-string-method
          pop-local-frame
          exception-occurred
          get-long-field
          get-method-id
          get-char-field
          get-string-utfchars
          get-version
          set-byte-field
          to-byte-array
          call-static-void-method
          call-float-method
          from-reflected-field
          call-static-string-method
          set-object-field
          get-object-field
          set-static-float-field
          delete-global-ref
          call-static-object-method
          detach-current-thread
          get-boolean-array-element?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.AndroidJNI a))
  (define (android-jni? a) (clr-is UnityEngine.AndroidJNI a))
  (define-method-port
    get-static-boolean-field?
    UnityEngine.AndroidJNI
    GetStaticBooleanField
    (static: System.Boolean System.IntPtr System.IntPtr))
  (define-method-port
    from-short-array
    UnityEngine.AndroidJNI
    FromShortArray
    (static: System.Int16[] System.IntPtr))
  (define-method-port
    set-short-field
    UnityEngine.AndroidJNI
    SetShortField
    (static: System.Void System.IntPtr System.IntPtr System.Int16))
  (define-method-port
    new-byte-array
    UnityEngine.AndroidJNI
    NewByteArray
    (static: System.IntPtr System.Int32))
  (define-method-port
    exception-describe
    UnityEngine.AndroidJNI
    ExceptionDescribe
    (static: System.Void))
  (define-method-port
    call-void-method
    UnityEngine.AndroidJNI
    CallVoidMethod
    (static:
      System.Void
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    new-global-ref
    UnityEngine.AndroidJNI
    NewGlobalRef
    (static: System.IntPtr System.IntPtr))
  (define-method-port
    from-byte-array
    UnityEngine.AndroidJNI
    FromByteArray
    (static: System.Byte[] System.IntPtr))
  (define-method-port
    new-string-utf
    UnityEngine.AndroidJNI
    NewStringUTF
    (static: System.IntPtr System.String))
  (define-method-port
    from-int-array
    UnityEngine.AndroidJNI
    FromIntArray
    (static: System.Int32[] System.IntPtr))
  (define-method-port
    get-long-array-element
    UnityEngine.AndroidJNI
    GetLongArrayElement
    (static: System.Int64 System.IntPtr System.Int32))
  (define-method-port
    set-static-char-field
    UnityEngine.AndroidJNI
    SetStaticCharField
    (static: System.Void System.IntPtr System.IntPtr System.Char))
  (define-method-port
    from-reflected-method
    UnityEngine.AndroidJNI
    FromReflectedMethod
    (static: System.IntPtr System.IntPtr))
  (define-method-port
    set-static-double-field
    UnityEngine.AndroidJNI
    SetStaticDoubleField
    (static: System.Void System.IntPtr System.IntPtr System.Double))
  (define-method-port
    call-static-boolean-method?
    UnityEngine.AndroidJNI
    CallStaticBooleanMethod
    (static:
      System.Boolean
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    get-static-short-field
    UnityEngine.AndroidJNI
    GetStaticShortField
    (static: System.Int16 System.IntPtr System.IntPtr))
  (define-method-port
    get-int-field
    UnityEngine.AndroidJNI
    GetIntField
    (static: System.Int32 System.IntPtr System.IntPtr))
  (define-method-port
    get-static-byte-field
    UnityEngine.AndroidJNI
    GetStaticByteField
    (static: System.Byte System.IntPtr System.IntPtr))
  (define-method-port
    new-double-array
    UnityEngine.AndroidJNI
    NewDoubleArray
    (static: System.IntPtr System.Int32))
  (define-method-port
    get-object-array-element
    UnityEngine.AndroidJNI
    GetObjectArrayElement
    (static: System.IntPtr System.IntPtr System.Int32))
  (define-method-port
    exception-clear
    UnityEngine.AndroidJNI
    ExceptionClear
    (static: System.Void))
  (define-method-port
    get-byte-array-element
    UnityEngine.AndroidJNI
    GetByteArrayElement
    (static: System.Byte System.IntPtr System.Int32))
  (define-method-port
    new-local-ref
    UnityEngine.AndroidJNI
    NewLocalRef
    (static: System.IntPtr System.IntPtr))
  (define-method-port
    is-instance-of?
    UnityEngine.AndroidJNI
    IsInstanceOf
    (static: System.Boolean System.IntPtr System.IntPtr))
  (define-method-port
    set-char-field
    UnityEngine.AndroidJNI
    SetCharField
    (static: System.Void System.IntPtr System.IntPtr System.Char))
  (define-method-port
    to-char-array
    UnityEngine.AndroidJNI
    ToCharArray
    (static: System.IntPtr System.Char[]))
  (define-method-port
    get-boolean-field?
    UnityEngine.AndroidJNI
    GetBooleanField
    (static: System.Boolean System.IntPtr System.IntPtr))
  (define-method-port
    from-boolean-array
    UnityEngine.AndroidJNI
    FromBooleanArray
    (static: System.Boolean[] System.IntPtr))
  (define-method-port
    set-int-field
    UnityEngine.AndroidJNI
    SetIntField
    (static: System.Void System.IntPtr System.IntPtr System.Int32))
  (define-method-port
    set-boolean-array-element
    UnityEngine.AndroidJNI
    SetBooleanArrayElement
    (static: System.Void System.IntPtr System.Int32 System.Byte))
  (define-method-port
    attach-current-thread
    UnityEngine.AndroidJNI
    AttachCurrentThread
    (static: System.Int32))
  (define-method-port
    set-static-object-field
    UnityEngine.AndroidJNI
    SetStaticObjectField
    (static: System.Void System.IntPtr System.IntPtr System.IntPtr))
  (define-method-port
    call-short-method
    UnityEngine.AndroidJNI
    CallShortMethod
    (static:
      System.Int16
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    to-long-array
    UnityEngine.AndroidJNI
    ToLongArray
    (static: System.IntPtr System.Int64[]))
  (define-method-port
    call-static-char-method
    UnityEngine.AndroidJNI
    CallStaticCharMethod
    (static:
      System.Char
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    get-field-id
    UnityEngine.AndroidJNI
    GetFieldID
    (static: System.IntPtr System.IntPtr System.String System.String))
  (define-method-port
    set-static-int-field
    UnityEngine.AndroidJNI
    SetStaticIntField
    (static: System.Void System.IntPtr System.IntPtr System.Int32))
  (define-method-port
    call-static-long-method
    UnityEngine.AndroidJNI
    CallStaticLongMethod
    (static:
      System.Int64
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    new-object-array
    UnityEngine.AndroidJNI
    NewObjectArray
    (static: System.IntPtr System.Int32 System.IntPtr System.IntPtr))
  (define-method-port
    set-static-short-field
    UnityEngine.AndroidJNI
    SetStaticShortField
    (static: System.Void System.IntPtr System.IntPtr System.Int16))
  (define-method-port
    get-static-string-field
    UnityEngine.AndroidJNI
    GetStaticStringField
    (static: System.String System.IntPtr System.IntPtr))
  (define-method-port
    throw
    UnityEngine.AndroidJNI
    Throw
    (static: System.Int32 System.IntPtr))
  (define-method-port
    call-static-byte-method
    UnityEngine.AndroidJNI
    CallStaticByteMethod
    (static:
      System.Byte
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    get-array-length
    UnityEngine.AndroidJNI
    GetArrayLength
    (static: System.Int32 System.IntPtr))
  (define-method-port
    new-boolean-array
    UnityEngine.AndroidJNI
    NewBooleanArray
    (static: System.IntPtr System.Int32))
  (define-method-port
    set-static-long-field
    UnityEngine.AndroidJNI
    SetStaticLongField
    (static: System.Void System.IntPtr System.IntPtr System.Int64))
  (define-method-port
    get-char-array-element
    UnityEngine.AndroidJNI
    GetCharArrayElement
    (static: System.Char System.IntPtr System.Int32))
  (define-method-port
    set-byte-array-element
    UnityEngine.AndroidJNI
    SetByteArrayElement
    (static: System.Void System.IntPtr System.Int32 System.SByte))
  (define-method-port
    to-int-array
    UnityEngine.AndroidJNI
    ToIntArray
    (static: System.IntPtr System.Int32[]))
  (define-method-port
    get-static-method-id
    UnityEngine.AndroidJNI
    GetStaticMethodID
    (static: System.IntPtr System.IntPtr System.String System.String))
  (define-method-port
    set-short-array-element
    UnityEngine.AndroidJNI
    SetShortArrayElement
    (static: System.Void System.IntPtr System.Int32 System.Int16))
  (define-method-port
    call-boolean-method?
    UnityEngine.AndroidJNI
    CallBooleanMethod
    (static:
      System.Boolean
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    is-assignable-from?
    UnityEngine.AndroidJNI
    IsAssignableFrom
    (static: System.Boolean System.IntPtr System.IntPtr))
  (define-method-port
    from-char-array
    UnityEngine.AndroidJNI
    FromCharArray
    (static: System.Char[] System.IntPtr))
  (define-method-port
    to-double-array
    UnityEngine.AndroidJNI
    ToDoubleArray
    (static: System.IntPtr System.Double[]))
  (define-method-port
    new-long-array
    UnityEngine.AndroidJNI
    NewLongArray
    (static: System.IntPtr System.Int32))
  (define-method-port
    get-static-field-id
    UnityEngine.AndroidJNI
    GetStaticFieldID
    (static: System.IntPtr System.IntPtr System.String System.String))
  (define-method-port
    new-float-array
    UnityEngine.AndroidJNI
    NewFloatArray
    (static: System.IntPtr System.Int32))
  (define-method-port
    new-short-array
    UnityEngine.AndroidJNI
    NewShortArray
    (static: System.IntPtr System.Int32))
  (define-method-port
    from-object-array
    UnityEngine.AndroidJNI
    FromObjectArray
    (static: System.IntPtr[] System.IntPtr))
  (define-method-port
    new-char-array
    UnityEngine.AndroidJNI
    NewCharArray
    (static: System.IntPtr System.Int32))
  (define-method-port
    set-int-array-element
    UnityEngine.AndroidJNI
    SetIntArrayElement
    (static: System.Void System.IntPtr System.Int32 System.Int32))
  (define-method-port
    set-string-field
    UnityEngine.AndroidJNI
    SetStringField
    (static: System.Void System.IntPtr System.IntPtr System.String))
  (define-method-port
    set-boolean-field
    UnityEngine.AndroidJNI
    SetBooleanField
    (static: System.Void System.IntPtr System.IntPtr System.Boolean))
  (define-method-port
    get-object-class
    UnityEngine.AndroidJNI
    GetObjectClass
    (static: System.IntPtr System.IntPtr))
  (define-method-port
    get-static-char-field
    UnityEngine.AndroidJNI
    GetStaticCharField
    (static: System.Char System.IntPtr System.IntPtr))
  (define-method-port
    from-double-array
    UnityEngine.AndroidJNI
    FromDoubleArray
    (static: System.Double[] System.IntPtr))
  (define-method-port
    call-byte-method
    UnityEngine.AndroidJNI
    CallByteMethod
    (static:
      System.Byte
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    call-double-method
    UnityEngine.AndroidJNI
    CallDoubleMethod
    (static:
      System.Double
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    get-float-field
    UnityEngine.AndroidJNI
    GetFloatField
    (static: System.Single System.IntPtr System.IntPtr))
  (define-method-port
    get-static-double-field
    UnityEngine.AndroidJNI
    GetStaticDoubleField
    (static: System.Double System.IntPtr System.IntPtr))
  (define-method-port
    get-static-long-field
    UnityEngine.AndroidJNI
    GetStaticLongField
    (static: System.Int64 System.IntPtr System.IntPtr))
  (define-method-port
    fatal-error
    UnityEngine.AndroidJNI
    FatalError
    (static: System.Void System.String))
  (define-method-port
    is-same-object?
    UnityEngine.AndroidJNI
    IsSameObject
    (static: System.Boolean System.IntPtr System.IntPtr))
  (define-method-port
    to-reflected-field
    UnityEngine.AndroidJNI
    ToReflectedField
    (static: System.IntPtr System.IntPtr System.IntPtr System.Boolean))
  (define-method-port
    to-object-array
    UnityEngine.AndroidJNI
    ToObjectArray
    (static: System.IntPtr System.IntPtr[])
    (static: System.IntPtr System.IntPtr[] System.IntPtr))
  (define-method-port
    set-static-boolean-field
    UnityEngine.AndroidJNI
    SetStaticBooleanField
    (static: System.Void System.IntPtr System.IntPtr System.Boolean))
  (define-method-port
    call-long-method
    UnityEngine.AndroidJNI
    CallLongMethod
    (static:
      System.Int64
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    set-char-array-element
    UnityEngine.AndroidJNI
    SetCharArrayElement
    (static: System.Void System.IntPtr System.Int32 System.Char))
  (define-method-port
    throw-new
    UnityEngine.AndroidJNI
    ThrowNew
    (static: System.Int32 System.IntPtr System.String))
  (define-method-port
    set-double-array-element
    UnityEngine.AndroidJNI
    SetDoubleArrayElement
    (static: System.Void System.IntPtr System.Int32 System.Double))
  (define-method-port
    call-static-short-method
    UnityEngine.AndroidJNI
    CallStaticShortMethod
    (static:
      System.Int16
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    get-float-array-element
    UnityEngine.AndroidJNI
    GetFloatArrayElement
    (static: System.Single System.IntPtr System.Int32))
  (define-method-port
    alloc-object
    UnityEngine.AndroidJNI
    AllocObject
    (static: System.IntPtr System.IntPtr))
  (define-method-port
    new-object
    UnityEngine.AndroidJNI
    NewObject
    (static:
      System.IntPtr
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    push-local-frame
    UnityEngine.AndroidJNI
    PushLocalFrame
    (static: System.Int32 System.Int32))
  (define-method-port
    get-string-utflength
    UnityEngine.AndroidJNI
    GetStringUTFLength
    (static: System.Int32 System.IntPtr))
  (define-method-port
    get-byte-field
    UnityEngine.AndroidJNI
    GetByteField
    (static: System.Byte System.IntPtr System.IntPtr))
  (define-method-port
    set-float-array-element
    UnityEngine.AndroidJNI
    SetFloatArrayElement
    (static: System.Void System.IntPtr System.Int32 System.Single))
  (define-method-port
    get-static-int-field
    UnityEngine.AndroidJNI
    GetStaticIntField
    (static: System.Int32 System.IntPtr System.IntPtr))
  (define-method-port
    get-static-object-field
    UnityEngine.AndroidJNI
    GetStaticObjectField
    (static: System.IntPtr System.IntPtr System.IntPtr))
  (define-method-port
    call-static-float-method
    UnityEngine.AndroidJNI
    CallStaticFloatMethod
    (static:
      System.Single
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    call-static-double-method
    UnityEngine.AndroidJNI
    CallStaticDoubleMethod
    (static:
      System.Double
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    to-float-array
    UnityEngine.AndroidJNI
    ToFloatArray
    (static: System.IntPtr System.Single[]))
  (define-method-port
    get-string-field
    UnityEngine.AndroidJNI
    GetStringField
    (static: System.String System.IntPtr System.IntPtr))
  (define-method-port
    to-boolean-array
    UnityEngine.AndroidJNI
    ToBooleanArray
    (static: System.IntPtr System.Boolean[]))
  (define-method-port
    get-superclass
    UnityEngine.AndroidJNI
    GetSuperclass
    (static: System.IntPtr System.IntPtr))
  (define-method-port
    set-long-field
    UnityEngine.AndroidJNI
    SetLongField
    (static: System.Void System.IntPtr System.IntPtr System.Int64))
  (define-method-port
    set-long-array-element
    UnityEngine.AndroidJNI
    SetLongArrayElement
    (static: System.Void System.IntPtr System.Int32 System.Int64))
  (define-method-port
    from-float-array
    UnityEngine.AndroidJNI
    FromFloatArray
    (static: System.Single[] System.IntPtr))
  (define-method-port
    to-short-array
    UnityEngine.AndroidJNI
    ToShortArray
    (static: System.IntPtr System.Int16[]))
  (define-method-port
    call-int-method
    UnityEngine.AndroidJNI
    CallIntMethod
    (static:
      System.Int32
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    call-static-int-method
    UnityEngine.AndroidJNI
    CallStaticIntMethod
    (static:
      System.Int32
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    call-char-method
    UnityEngine.AndroidJNI
    CallCharMethod
    (static:
      System.Char
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    get-double-array-element
    UnityEngine.AndroidJNI
    GetDoubleArrayElement
    (static: System.Double System.IntPtr System.Int32))
  (define-method-port
    to-reflected-method
    UnityEngine.AndroidJNI
    ToReflectedMethod
    (static: System.IntPtr System.IntPtr System.IntPtr System.Boolean))
  (define-method-port
    set-float-field
    UnityEngine.AndroidJNI
    SetFloatField
    (static: System.Void System.IntPtr System.IntPtr System.Single))
  (define-method-port
    get-int-array-element
    UnityEngine.AndroidJNI
    GetIntArrayElement
    (static: System.Int32 System.IntPtr System.Int32))
  (define-method-port
    delete-local-ref
    UnityEngine.AndroidJNI
    DeleteLocalRef
    (static: System.Void System.IntPtr))
  (define-method-port
    set-object-array-element
    UnityEngine.AndroidJNI
    SetObjectArrayElement
    (static: System.Void System.IntPtr System.Int32 System.IntPtr))
  (define-method-port
    ensure-local-capacity
    UnityEngine.AndroidJNI
    EnsureLocalCapacity
    (static: System.Int32 System.Int32))
  (define-method-port
    set-static-byte-field
    UnityEngine.AndroidJNI
    SetStaticByteField
    (static: System.Void System.IntPtr System.IntPtr System.Byte))
  (define-method-port
    get-short-array-element
    UnityEngine.AndroidJNI
    GetShortArrayElement
    (static: System.Int16 System.IntPtr System.Int32))
  (define-method-port
    get-short-field
    UnityEngine.AndroidJNI
    GetShortField
    (static: System.Int16 System.IntPtr System.IntPtr))
  (define-method-port
    new-int-array
    UnityEngine.AndroidJNI
    NewIntArray
    (static: System.IntPtr System.Int32))
  (define-method-port
    find-class
    UnityEngine.AndroidJNI
    FindClass
    (static: System.IntPtr System.String))
  (define-method-port
    set-static-string-field
    UnityEngine.AndroidJNI
    SetStaticStringField
    (static: System.Void System.IntPtr System.IntPtr System.String))
  (define-method-port
    get-static-float-field
    UnityEngine.AndroidJNI
    GetStaticFloatField
    (static: System.Single System.IntPtr System.IntPtr))
  (define-method-port
    set-double-field
    UnityEngine.AndroidJNI
    SetDoubleField
    (static: System.Void System.IntPtr System.IntPtr System.Double))
  (define-method-port
    get-double-field
    UnityEngine.AndroidJNI
    GetDoubleField
    (static: System.Double System.IntPtr System.IntPtr))
  (define-method-port
    from-long-array
    UnityEngine.AndroidJNI
    FromLongArray
    (static: System.Int64[] System.IntPtr))
  (define-method-port
    call-object-method
    UnityEngine.AndroidJNI
    CallObjectMethod
    (static:
      System.IntPtr
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    call-string-method
    UnityEngine.AndroidJNI
    CallStringMethod
    (static:
      System.String
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    pop-local-frame
    UnityEngine.AndroidJNI
    PopLocalFrame
    (static: System.IntPtr System.IntPtr))
  (define-method-port
    exception-occurred
    UnityEngine.AndroidJNI
    ExceptionOccurred
    (static: System.IntPtr))
  (define-method-port
    get-long-field
    UnityEngine.AndroidJNI
    GetLongField
    (static: System.Int64 System.IntPtr System.IntPtr))
  (define-method-port
    get-method-id
    UnityEngine.AndroidJNI
    GetMethodID
    (static: System.IntPtr System.IntPtr System.String System.String))
  (define-method-port
    get-char-field
    UnityEngine.AndroidJNI
    GetCharField
    (static: System.Char System.IntPtr System.IntPtr))
  (define-method-port
    get-string-utfchars
    UnityEngine.AndroidJNI
    GetStringUTFChars
    (static: System.String System.IntPtr))
  (define-method-port
    get-version
    UnityEngine.AndroidJNI
    GetVersion
    (static: System.Int32))
  (define-method-port
    set-byte-field
    UnityEngine.AndroidJNI
    SetByteField
    (static: System.Void System.IntPtr System.IntPtr System.Byte))
  (define-method-port
    to-byte-array
    UnityEngine.AndroidJNI
    ToByteArray
    (static: System.IntPtr System.Byte[]))
  (define-method-port
    call-static-void-method
    UnityEngine.AndroidJNI
    CallStaticVoidMethod
    (static:
      System.Void
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    call-float-method
    UnityEngine.AndroidJNI
    CallFloatMethod
    (static:
      System.Single
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    from-reflected-field
    UnityEngine.AndroidJNI
    FromReflectedField
    (static: System.IntPtr System.IntPtr))
  (define-method-port
    call-static-string-method
    UnityEngine.AndroidJNI
    CallStaticStringMethod
    (static:
      System.String
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    set-object-field
    UnityEngine.AndroidJNI
    SetObjectField
    (static: System.Void System.IntPtr System.IntPtr System.IntPtr))
  (define-method-port
    get-object-field
    UnityEngine.AndroidJNI
    GetObjectField
    (static: System.IntPtr System.IntPtr System.IntPtr))
  (define-method-port
    set-static-float-field
    UnityEngine.AndroidJNI
    SetStaticFloatField
    (static: System.Void System.IntPtr System.IntPtr System.Single))
  (define-method-port
    delete-global-ref
    UnityEngine.AndroidJNI
    DeleteGlobalRef
    (static: System.Void System.IntPtr))
  (define-method-port
    call-static-object-method
    UnityEngine.AndroidJNI
    CallStaticObjectMethod
    (static:
      System.IntPtr
      System.IntPtr
      System.IntPtr
      UnityEngine.jvalue[]))
  (define-method-port
    detach-current-thread
    UnityEngine.AndroidJNI
    DetachCurrentThread
    (static: System.Int32))
  (define-method-port
    get-boolean-array-element?
    UnityEngine.AndroidJNI
    GetBooleanArrayElement
    (static: System.Boolean System.IntPtr System.Int32)))
