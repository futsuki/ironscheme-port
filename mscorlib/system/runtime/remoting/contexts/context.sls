(library (system runtime remoting contexts context)
  (export new
          is?
          context?
          do-call-back
          set-data
          register-dynamic-property?
          get-data
          to-string
          unregister-dynamic-property?
          set-property
          allocate-named-data-slot
          get-named-data-slot
          allocate-data-slot
          free-named-data-slot
          get-property
          freeze
          default-context
          context-id
          context-properties)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Runtime.Remoting.Contexts.Context a ...)))))
  (define (is? a) (clr-is System.Runtime.Remoting.Contexts.Context a))
  (define (context? a)
    (clr-is System.Runtime.Remoting.Contexts.Context a))
  (define-method-port
    do-call-back
    System.Runtime.Remoting.Contexts.Context
    DoCallBack
    (System.Void System.Runtime.Remoting.Contexts.CrossContextDelegate))
  (define-method-port
    set-data
    System.Runtime.Remoting.Contexts.Context
    SetData
    (static: System.Void System.LocalDataStoreSlot System.Object))
  (define-method-port
    register-dynamic-property?
    System.Runtime.Remoting.Contexts.Context
    RegisterDynamicProperty
    (static:
      System.Boolean
      System.Runtime.Remoting.Contexts.IDynamicProperty
      System.ContextBoundObject
      System.Runtime.Remoting.Contexts.Context))
  (define-method-port
    get-data
    System.Runtime.Remoting.Contexts.Context
    GetData
    (static: System.Object System.LocalDataStoreSlot))
  (define-method-port
    to-string
    System.Runtime.Remoting.Contexts.Context
    ToString
    (System.String))
  (define-method-port
    unregister-dynamic-property?
    System.Runtime.Remoting.Contexts.Context
    UnregisterDynamicProperty
    (static:
      System.Boolean
      System.String
      System.ContextBoundObject
      System.Runtime.Remoting.Contexts.Context))
  (define-method-port
    set-property
    System.Runtime.Remoting.Contexts.Context
    SetProperty
    (System.Void System.Runtime.Remoting.Contexts.IContextProperty))
  (define-method-port
    allocate-named-data-slot
    System.Runtime.Remoting.Contexts.Context
    AllocateNamedDataSlot
    (static: System.LocalDataStoreSlot System.String))
  (define-method-port
    get-named-data-slot
    System.Runtime.Remoting.Contexts.Context
    GetNamedDataSlot
    (static: System.LocalDataStoreSlot System.String))
  (define-method-port
    allocate-data-slot
    System.Runtime.Remoting.Contexts.Context
    AllocateDataSlot
    (static: System.LocalDataStoreSlot))
  (define-method-port
    free-named-data-slot
    System.Runtime.Remoting.Contexts.Context
    FreeNamedDataSlot
    (static: System.Void System.String))
  (define-method-port
    get-property
    System.Runtime.Remoting.Contexts.Context
    GetProperty
    (System.Runtime.Remoting.Contexts.IContextProperty System.String))
  (define-method-port
    freeze
    System.Runtime.Remoting.Contexts.Context
    Freeze
    (System.Void))
  (define-field-port
    default-context
    #f
    #f
    (static: property:)
    System.Runtime.Remoting.Contexts.Context
    DefaultContext
    System.Runtime.Remoting.Contexts.Context)
  (define-field-port
    context-id
    #f
    #f
    (property:)
    System.Runtime.Remoting.Contexts.Context
    ContextID
    System.Int32)
  (define-field-port
    context-properties
    #f
    #f
    (property:)
    System.Runtime.Remoting.Contexts.Context
    ContextProperties
    System.Runtime.Remoting.Contexts.IContextProperty[]))
