(library (system runtime interop-services marshal)
  (export is?
          marshal?
          change-wrapper-handle-strength
          write-int-ptr
          get-com-object-data
          read-int-ptr
          ptr-to-string-ansi
          get-idispatch-for-object
          get-function-pointer-for-delegate
          final-release-com-object
          ptr-to-string-uni
          string-to-co-task-mem-uni
          read-int64
          prelink-all
          release-thread-cache
          destroy-structure
          get-typed-object-for-iunknown
          copy
          get-iunknown-for-object-in-context
          get-hrfor-exception
          read-byte
          generate-prog-id-for-type
          get-itype-info-for-type
          get-last-win32-error
          secure-string-to-co-task-mem-ansi
          zero-free-bstr
          secure-string-to-global-alloc-unicode
          release
          zero-free-global-alloc-ansi
          string-to-bstr
          release-com-object
          offset-of
          get-objects-for-native-variants
          get-type-lib-guid-for-assembly
          get-unique-object-for-iunknown
          re-alloc-co-task-mem
          get-object-for-iunknown
          structure-to-ptr
          get-type-lib-lcid
          get-iunknown-for-object
          get-com-slot-for-method-info
          free-co-task-mem
          write-int64
          string-to-hglobal-ansi
          get-method-info-for-com-slot
          get-start-com-slot
          size-of
          read-int16
          string-to-co-task-mem-auto
          get-thread-from-fiber-cookie
          get-managed-thunk-for-unmanaged-method-ptr
          ptr-to-structure
          query-interface
          create-aggregated-object
          get-object-for-native-variant
          zero-free-co-task-mem-unicode
          get-hinstance
          num-param-bytes
          get-com-interface-for-object-in-context
          write-int16
          get-type-info-name
          get-active-object
          prelink
          secure-string-to-global-alloc-ansi
          secure-string-to-bstr
          ptr-to-string-auto
          free-bstr
          alloc-hglobal
          get-type-lib-version-for-assembly
          is-type-visible-from-com?
          unsafe-addr-of-pinned-array-element
          get-type-lib-guid
          zero-free-co-task-mem-ansi
          get-native-variant-for-object
          string-to-co-task-mem-ansi
          string-to-hglobal-uni
          re-alloc-hglobal
          is-com-object?
          alloc-co-task-mem
          string-to-hglobal-auto
          get-exception-code
          zero-free-global-alloc-unicode
          set-com-object-data?
          get-end-com-slot
          get-delegate-for-function-pointer
          throw-exception-for-hr
          get-com-interface-for-object
          get-exception-for-hr
          read-int32
          bind-to-moniker
          get-type-for-itype-info
          add-ref
          get-exception-pointers
          get-type-lib-name
          write-byte
          ptr-to-string-bstr
          free-hglobal
          generate-guid-for-type
          write-int32
          get-idispatch-for-object-in-context
          get-unmanaged-thunk-for-managed-method-ptr
          secure-string-to-co-task-mem-unicode
          create-wrapper-of-type
          get-hrfor-last-win32-error
          system-max-dbcschar-size
          system-default-char-size)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Runtime.InteropServices.Marshal a))
  (define (marshal? a)
    (clr-is System.Runtime.InteropServices.Marshal a))
  (define-method-port
    change-wrapper-handle-strength
    System.Runtime.InteropServices.Marshal
    ChangeWrapperHandleStrength
    (static: System.Void System.Object System.Boolean))
  (define-method-port
    write-int-ptr
    System.Runtime.InteropServices.Marshal
    WriteIntPtr
    (static: System.Void System.Object System.Int32 System.IntPtr)
    (static: System.Void System.IntPtr System.Int32 System.IntPtr)
    (static: System.Void System.IntPtr System.IntPtr))
  (define-method-port
    get-com-object-data
    System.Runtime.InteropServices.Marshal
    GetComObjectData
    (static: System.Object System.Object System.Object))
  (define-method-port
    read-int-ptr
    System.Runtime.InteropServices.Marshal
    ReadIntPtr
    (static: System.IntPtr System.Object System.Int32)
    (static: System.IntPtr System.IntPtr System.Int32)
    (static: System.IntPtr System.IntPtr))
  (define-method-port
    ptr-to-string-ansi
    System.Runtime.InteropServices.Marshal
    PtrToStringAnsi
    (static: System.String System.IntPtr System.Int32)
    (static: System.String System.IntPtr))
  (define-method-port
    get-idispatch-for-object
    System.Runtime.InteropServices.Marshal
    GetIDispatchForObject
    (static: System.IntPtr System.Object))
  (define-method-port
    get-function-pointer-for-delegate
    System.Runtime.InteropServices.Marshal
    GetFunctionPointerForDelegate
    (static: System.IntPtr System.Delegate))
  (define-method-port
    final-release-com-object
    System.Runtime.InteropServices.Marshal
    FinalReleaseComObject
    (static: System.Int32 System.Object))
  (define-method-port
    ptr-to-string-uni
    System.Runtime.InteropServices.Marshal
    PtrToStringUni
    (static: System.String System.IntPtr System.Int32)
    (static: System.String System.IntPtr))
  (define-method-port
    string-to-co-task-mem-uni
    System.Runtime.InteropServices.Marshal
    StringToCoTaskMemUni
    (static: System.IntPtr System.String))
  (define-method-port
    read-int64
    System.Runtime.InteropServices.Marshal
    ReadInt64
    (static: System.Int64 System.Object System.Int32)
    (static: System.Int64 System.IntPtr System.Int32)
    (static: System.Int64 System.IntPtr))
  (define-method-port
    prelink-all
    System.Runtime.InteropServices.Marshal
    PrelinkAll
    (static: System.Void System.Type))
  (define-method-port
    release-thread-cache
    System.Runtime.InteropServices.Marshal
    ReleaseThreadCache
    (static: System.Void))
  (define-method-port
    destroy-structure
    System.Runtime.InteropServices.Marshal
    DestroyStructure
    (static: System.Void System.IntPtr System.Type))
  (define-method-port
    get-typed-object-for-iunknown
    System.Runtime.InteropServices.Marshal
    GetTypedObjectForIUnknown
    (static: System.Object System.IntPtr System.Type))
  (define-method-port
    copy
    System.Runtime.InteropServices.Marshal
    Copy
    (static:
      System.Void
      System.IntPtr
      System.IntPtr[]
      System.Int32
      System.Int32)
    (static:
      System.Void
      System.IntPtr
      System.Double[]
      System.Int32
      System.Int32)
    (static:
      System.Void
      System.IntPtr
      System.Single[]
      System.Int32
      System.Int32)
    (static:
      System.Void
      System.IntPtr
      System.Int64[]
      System.Int32
      System.Int32)
    (static:
      System.Void
      System.IntPtr
      System.Int32[]
      System.Int32
      System.Int32)
    (static:
      System.Void
      System.IntPtr
      System.Int16[]
      System.Int32
      System.Int32)
    (static:
      System.Void
      System.IntPtr
      System.Char[]
      System.Int32
      System.Int32)
    (static:
      System.Void
      System.IntPtr
      System.Byte[]
      System.Int32
      System.Int32)
    (static:
      System.Void
      System.IntPtr[]
      System.Int32
      System.IntPtr
      System.Int32)
    (static:
      System.Void
      System.Double[]
      System.Int32
      System.IntPtr
      System.Int32)
    (static:
      System.Void
      System.Single[]
      System.Int32
      System.IntPtr
      System.Int32)
    (static:
      System.Void
      System.Int64[]
      System.Int32
      System.IntPtr
      System.Int32)
    (static:
      System.Void
      System.Int32[]
      System.Int32
      System.IntPtr
      System.Int32)
    (static:
      System.Void
      System.Int16[]
      System.Int32
      System.IntPtr
      System.Int32)
    (static:
      System.Void
      System.Char[]
      System.Int32
      System.IntPtr
      System.Int32)
    (static:
      System.Void
      System.Byte[]
      System.Int32
      System.IntPtr
      System.Int32))
  (define-method-port
    get-iunknown-for-object-in-context
    System.Runtime.InteropServices.Marshal
    GetIUnknownForObjectInContext
    (static: System.IntPtr System.Object))
  (define-method-port
    get-hrfor-exception
    System.Runtime.InteropServices.Marshal
    GetHRForException
    (static: System.Int32 System.Exception))
  (define-method-port
    read-byte
    System.Runtime.InteropServices.Marshal
    ReadByte
    (static: System.Byte System.Object System.Int32)
    (static: System.Byte System.IntPtr System.Int32)
    (static: System.Byte System.IntPtr))
  (define-method-port
    generate-prog-id-for-type
    System.Runtime.InteropServices.Marshal
    GenerateProgIdForType
    (static: System.String System.Type))
  (define-method-port
    get-itype-info-for-type
    System.Runtime.InteropServices.Marshal
    GetITypeInfoForType
    (static: System.IntPtr System.Type))
  (define-method-port
    get-last-win32-error
    System.Runtime.InteropServices.Marshal
    GetLastWin32Error
    (static: System.Int32))
  (define-method-port
    secure-string-to-co-task-mem-ansi
    System.Runtime.InteropServices.Marshal
    SecureStringToCoTaskMemAnsi
    (static: System.IntPtr System.Security.SecureString))
  (define-method-port
    zero-free-bstr
    System.Runtime.InteropServices.Marshal
    ZeroFreeBSTR
    (static: System.Void System.IntPtr))
  (define-method-port
    secure-string-to-global-alloc-unicode
    System.Runtime.InteropServices.Marshal
    SecureStringToGlobalAllocUnicode
    (static: System.IntPtr System.Security.SecureString))
  (define-method-port
    release
    System.Runtime.InteropServices.Marshal
    Release
    (static: System.Int32 System.IntPtr))
  (define-method-port
    zero-free-global-alloc-ansi
    System.Runtime.InteropServices.Marshal
    ZeroFreeGlobalAllocAnsi
    (static: System.Void System.IntPtr))
  (define-method-port
    string-to-bstr
    System.Runtime.InteropServices.Marshal
    StringToBSTR
    (static: System.IntPtr System.String))
  (define-method-port
    release-com-object
    System.Runtime.InteropServices.Marshal
    ReleaseComObject
    (static: System.Int32 System.Object))
  (define-method-port
    offset-of
    System.Runtime.InteropServices.Marshal
    OffsetOf
    (static: System.IntPtr System.Type System.String))
  (define-method-port
    get-objects-for-native-variants
    System.Runtime.InteropServices.Marshal
    GetObjectsForNativeVariants
    (static: System.Object[] System.IntPtr System.Int32))
  (define-method-port
    get-type-lib-guid-for-assembly
    System.Runtime.InteropServices.Marshal
    GetTypeLibGuidForAssembly
    (static: System.Guid System.Reflection.Assembly))
  (define-method-port
    get-unique-object-for-iunknown
    System.Runtime.InteropServices.Marshal
    GetUniqueObjectForIUnknown
    (static: System.Object System.IntPtr))
  (define-method-port
    re-alloc-co-task-mem
    System.Runtime.InteropServices.Marshal
    ReAllocCoTaskMem
    (static: System.IntPtr System.IntPtr System.Int32))
  (define-method-port
    get-object-for-iunknown
    System.Runtime.InteropServices.Marshal
    GetObjectForIUnknown
    (static: System.Object System.IntPtr))
  (define-method-port
    structure-to-ptr
    System.Runtime.InteropServices.Marshal
    StructureToPtr
    (static: System.Void System.Object System.IntPtr System.Boolean))
  (define-method-port
    get-type-lib-lcid
    System.Runtime.InteropServices.Marshal
    GetTypeLibLcid
    (static:
      System.Int32
      System.Runtime.InteropServices.ComTypes.ITypeLib)
    (static: System.Int32 System.Runtime.InteropServices.UCOMITypeLib))
  (define-method-port
    get-iunknown-for-object
    System.Runtime.InteropServices.Marshal
    GetIUnknownForObject
    (static: System.IntPtr System.Object))
  (define-method-port
    get-com-slot-for-method-info
    System.Runtime.InteropServices.Marshal
    GetComSlotForMethodInfo
    (static: System.Int32 System.Reflection.MemberInfo))
  (define-method-port
    free-co-task-mem
    System.Runtime.InteropServices.Marshal
    FreeCoTaskMem
    (static: System.Void System.IntPtr))
  (define-method-port
    write-int64
    System.Runtime.InteropServices.Marshal
    WriteInt64
    (static: System.Void System.Object System.Int32 System.Int64)
    (static: System.Void System.IntPtr System.Int32 System.Int64)
    (static: System.Void System.IntPtr System.Int64))
  (define-method-port
    string-to-hglobal-ansi
    System.Runtime.InteropServices.Marshal
    StringToHGlobalAnsi
    (static: System.IntPtr System.String))
  (define-method-port
    get-method-info-for-com-slot
    System.Runtime.InteropServices.Marshal
    GetMethodInfoForComSlot
    (static:
      System.Reflection.MemberInfo
      System.Type
      System.Int32
      System.Runtime.InteropServices.ComMemberType&))
  (define-method-port
    get-start-com-slot
    System.Runtime.InteropServices.Marshal
    GetStartComSlot
    (static: System.Int32 System.Type))
  (define-method-port
    size-of
    System.Runtime.InteropServices.Marshal
    SizeOf
    (static: System.Int32 System.Type)
    (static: System.Int32 System.Object))
  (define-method-port
    read-int16
    System.Runtime.InteropServices.Marshal
    ReadInt16
    (static: System.Int16 System.Object System.Int32)
    (static: System.Int16 System.IntPtr System.Int32)
    (static: System.Int16 System.IntPtr))
  (define-method-port
    string-to-co-task-mem-auto
    System.Runtime.InteropServices.Marshal
    StringToCoTaskMemAuto
    (static: System.IntPtr System.String))
  (define-method-port
    get-thread-from-fiber-cookie
    System.Runtime.InteropServices.Marshal
    GetThreadFromFiberCookie
    (static: System.Threading.Thread System.Int32))
  (define-method-port
    get-managed-thunk-for-unmanaged-method-ptr
    System.Runtime.InteropServices.Marshal
    GetManagedThunkForUnmanagedMethodPtr
    (static: System.IntPtr System.IntPtr System.IntPtr System.Int32))
  (define-method-port
    ptr-to-structure
    System.Runtime.InteropServices.Marshal
    PtrToStructure
    (static: System.Object System.IntPtr System.Type)
    (static: System.Void System.IntPtr System.Object))
  (define-method-port
    query-interface
    System.Runtime.InteropServices.Marshal
    QueryInterface
    (static: System.Int32 System.IntPtr System.Guid& System.IntPtr&))
  (define-method-port
    create-aggregated-object
    System.Runtime.InteropServices.Marshal
    CreateAggregatedObject
    (static: System.IntPtr System.IntPtr System.Object))
  (define-method-port
    get-object-for-native-variant
    System.Runtime.InteropServices.Marshal
    GetObjectForNativeVariant
    (static: System.Object System.IntPtr))
  (define-method-port
    zero-free-co-task-mem-unicode
    System.Runtime.InteropServices.Marshal
    ZeroFreeCoTaskMemUnicode
    (static: System.Void System.IntPtr))
  (define-method-port
    get-hinstance
    System.Runtime.InteropServices.Marshal
    GetHINSTANCE
    (static: System.IntPtr System.Reflection.Module))
  (define-method-port
    num-param-bytes
    System.Runtime.InteropServices.Marshal
    NumParamBytes
    (static: System.Int32 System.Reflection.MethodInfo))
  (define-method-port
    get-com-interface-for-object-in-context
    System.Runtime.InteropServices.Marshal
    GetComInterfaceForObjectInContext
    (static: System.IntPtr System.Object System.Type))
  (define-method-port
    write-int16
    System.Runtime.InteropServices.Marshal
    WriteInt16
    (static: System.Void System.Object System.Int32 System.Char)
    (static: System.Void System.IntPtr System.Int32 System.Char)
    (static: System.Void System.IntPtr System.Char)
    (static: System.Void System.Object System.Int32 System.Int16)
    (static: System.Void System.IntPtr System.Int32 System.Int16)
    (static: System.Void System.IntPtr System.Int16))
  (define-method-port
    get-type-info-name
    System.Runtime.InteropServices.Marshal
    GetTypeInfoName
    (static:
      System.String
      System.Runtime.InteropServices.ComTypes.ITypeInfo)
    (static:
      System.String
      System.Runtime.InteropServices.UCOMITypeInfo))
  (define-method-port
    get-active-object
    System.Runtime.InteropServices.Marshal
    GetActiveObject
    (static: System.Object System.String))
  (define-method-port
    prelink
    System.Runtime.InteropServices.Marshal
    Prelink
    (static: System.Void System.Reflection.MethodInfo))
  (define-method-port
    secure-string-to-global-alloc-ansi
    System.Runtime.InteropServices.Marshal
    SecureStringToGlobalAllocAnsi
    (static: System.IntPtr System.Security.SecureString))
  (define-method-port
    secure-string-to-bstr
    System.Runtime.InteropServices.Marshal
    SecureStringToBSTR
    (static: System.IntPtr System.Security.SecureString))
  (define-method-port
    ptr-to-string-auto
    System.Runtime.InteropServices.Marshal
    PtrToStringAuto
    (static: System.String System.IntPtr System.Int32)
    (static: System.String System.IntPtr))
  (define-method-port
    free-bstr
    System.Runtime.InteropServices.Marshal
    FreeBSTR
    (static: System.Void System.IntPtr))
  (define-method-port
    alloc-hglobal
    System.Runtime.InteropServices.Marshal
    AllocHGlobal
    (static: System.IntPtr System.Int32)
    (static: System.IntPtr System.IntPtr))
  (define-method-port
    get-type-lib-version-for-assembly
    System.Runtime.InteropServices.Marshal
    GetTypeLibVersionForAssembly
    (static:
      System.Void
      System.Reflection.Assembly
      System.Int32&
      System.Int32&))
  (define-method-port
    is-type-visible-from-com?
    System.Runtime.InteropServices.Marshal
    IsTypeVisibleFromCom
    (static: System.Boolean System.Type))
  (define-method-port
    unsafe-addr-of-pinned-array-element
    System.Runtime.InteropServices.Marshal
    UnsafeAddrOfPinnedArrayElement
    (static: System.IntPtr System.Array System.Int32))
  (define-method-port
    get-type-lib-guid
    System.Runtime.InteropServices.Marshal
    GetTypeLibGuid
    (static:
      System.Guid
      System.Runtime.InteropServices.ComTypes.ITypeLib)
    (static: System.Guid System.Runtime.InteropServices.UCOMITypeLib))
  (define-method-port
    zero-free-co-task-mem-ansi
    System.Runtime.InteropServices.Marshal
    ZeroFreeCoTaskMemAnsi
    (static: System.Void System.IntPtr))
  (define-method-port
    get-native-variant-for-object
    System.Runtime.InteropServices.Marshal
    GetNativeVariantForObject
    (static: System.Void System.Object System.IntPtr))
  (define-method-port
    string-to-co-task-mem-ansi
    System.Runtime.InteropServices.Marshal
    StringToCoTaskMemAnsi
    (static: System.IntPtr System.String))
  (define-method-port
    string-to-hglobal-uni
    System.Runtime.InteropServices.Marshal
    StringToHGlobalUni
    (static: System.IntPtr System.String))
  (define-method-port
    re-alloc-hglobal
    System.Runtime.InteropServices.Marshal
    ReAllocHGlobal
    (static: System.IntPtr System.IntPtr System.IntPtr))
  (define-method-port
    is-com-object?
    System.Runtime.InteropServices.Marshal
    IsComObject
    (static: System.Boolean System.Object))
  (define-method-port
    alloc-co-task-mem
    System.Runtime.InteropServices.Marshal
    AllocCoTaskMem
    (static: System.IntPtr System.Int32))
  (define-method-port
    string-to-hglobal-auto
    System.Runtime.InteropServices.Marshal
    StringToHGlobalAuto
    (static: System.IntPtr System.String))
  (define-method-port
    get-exception-code
    System.Runtime.InteropServices.Marshal
    GetExceptionCode
    (static: System.Int32))
  (define-method-port
    zero-free-global-alloc-unicode
    System.Runtime.InteropServices.Marshal
    ZeroFreeGlobalAllocUnicode
    (static: System.Void System.IntPtr))
  (define-method-port
    set-com-object-data?
    System.Runtime.InteropServices.Marshal
    SetComObjectData
    (static: System.Boolean System.Object System.Object System.Object))
  (define-method-port
    get-end-com-slot
    System.Runtime.InteropServices.Marshal
    GetEndComSlot
    (static: System.Int32 System.Type))
  (define-method-port
    get-delegate-for-function-pointer
    System.Runtime.InteropServices.Marshal
    GetDelegateForFunctionPointer
    (static: System.Delegate System.IntPtr System.Type))
  (define-method-port
    throw-exception-for-hr
    System.Runtime.InteropServices.Marshal
    ThrowExceptionForHR
    (static: System.Void System.Int32 System.IntPtr)
    (static: System.Void System.Int32))
  (define-method-port
    get-com-interface-for-object
    System.Runtime.InteropServices.Marshal
    GetComInterfaceForObject
    (static: System.IntPtr System.Object System.Type))
  (define-method-port
    get-exception-for-hr
    System.Runtime.InteropServices.Marshal
    GetExceptionForHR
    (static: System.Exception System.Int32 System.IntPtr)
    (static: System.Exception System.Int32))
  (define-method-port
    read-int32
    System.Runtime.InteropServices.Marshal
    ReadInt32
    (static: System.Int32 System.Object System.Int32)
    (static: System.Int32 System.IntPtr System.Int32)
    (static: System.Int32 System.IntPtr))
  (define-method-port
    bind-to-moniker
    System.Runtime.InteropServices.Marshal
    BindToMoniker
    (static: System.Object System.String))
  (define-method-port
    get-type-for-itype-info
    System.Runtime.InteropServices.Marshal
    GetTypeForITypeInfo
    (static: System.Type System.IntPtr))
  (define-method-port
    add-ref
    System.Runtime.InteropServices.Marshal
    AddRef
    (static: System.Int32 System.IntPtr))
  (define-method-port
    get-exception-pointers
    System.Runtime.InteropServices.Marshal
    GetExceptionPointers
    (static: System.IntPtr))
  (define-method-port
    get-type-lib-name
    System.Runtime.InteropServices.Marshal
    GetTypeLibName
    (static:
      System.String
      System.Runtime.InteropServices.ComTypes.ITypeLib)
    (static: System.String System.Runtime.InteropServices.UCOMITypeLib))
  (define-method-port
    write-byte
    System.Runtime.InteropServices.Marshal
    WriteByte
    (static: System.Void System.Object System.Int32 System.Byte)
    (static: System.Void System.IntPtr System.Int32 System.Byte)
    (static: System.Void System.IntPtr System.Byte))
  (define-method-port
    ptr-to-string-bstr
    System.Runtime.InteropServices.Marshal
    PtrToStringBSTR
    (static: System.String System.IntPtr))
  (define-method-port
    free-hglobal
    System.Runtime.InteropServices.Marshal
    FreeHGlobal
    (static: System.Void System.IntPtr))
  (define-method-port
    generate-guid-for-type
    System.Runtime.InteropServices.Marshal
    GenerateGuidForType
    (static: System.Guid System.Type))
  (define-method-port
    write-int32
    System.Runtime.InteropServices.Marshal
    WriteInt32
    (static: System.Void System.Object System.Int32 System.Int32)
    (static: System.Void System.IntPtr System.Int32 System.Int32)
    (static: System.Void System.IntPtr System.Int32))
  (define-method-port
    get-idispatch-for-object-in-context
    System.Runtime.InteropServices.Marshal
    GetIDispatchForObjectInContext
    (static: System.IntPtr System.Object))
  (define-method-port
    get-unmanaged-thunk-for-managed-method-ptr
    System.Runtime.InteropServices.Marshal
    GetUnmanagedThunkForManagedMethodPtr
    (static: System.IntPtr System.IntPtr System.IntPtr System.Int32))
  (define-method-port
    secure-string-to-co-task-mem-unicode
    System.Runtime.InteropServices.Marshal
    SecureStringToCoTaskMemUnicode
    (static: System.IntPtr System.Security.SecureString))
  (define-method-port
    create-wrapper-of-type
    System.Runtime.InteropServices.Marshal
    CreateWrapperOfType
    (static: System.Object System.Object System.Type))
  (define-method-port
    get-hrfor-last-win32-error
    System.Runtime.InteropServices.Marshal
    GetHRForLastWin32Error
    (static: System.Int32))
  (define-field-port
    system-max-dbcschar-size
    #f
    #f
    (static:)
    System.Runtime.InteropServices.Marshal
    SystemMaxDBCSCharSize
    System.Int32)
  (define-field-port
    system-default-char-size
    #f
    #f
    (static:)
    System.Runtime.InteropServices.Marshal
    SystemDefaultCharSize
    System.Int32))
