(library (system delegate)
  (export is?
          delegate?
          get-hash-code
          get-invocation-list
          combine
          get-object-data
          dynamic-invoke
          remove
          create-delegate
          remove-all
          clone
          equals?
          method
          target)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Delegate a))
  (define (delegate? a) (clr-is System.Delegate a))
  (define-method-port
    get-hash-code
    System.Delegate
    GetHashCode
    (System.Int32))
  (define-method-port
    get-invocation-list
    System.Delegate
    GetInvocationList
    (System.Delegate[]))
  (define-method-port
    combine
    System.Delegate
    Combine
    (static: System.Delegate System.Delegate[])
    (static: System.Delegate System.Delegate System.Delegate))
  (define-method-port
    get-object-data
    System.Delegate
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    dynamic-invoke
    System.Delegate
    DynamicInvoke
    (System.Object System.Object[]))
  (define-method-port
    remove
    System.Delegate
    Remove
    (static: System.Delegate System.Delegate System.Delegate))
  (define-method-port
    create-delegate
    System.Delegate
    CreateDelegate
    (static:
      System.Delegate
      System.Type
      System.Object
      System.String
      System.Boolean)
    (static:
      System.Delegate
      System.Type
      System.Object
      System.String
      System.Boolean
      System.Boolean)
    (static:
      System.Delegate
      System.Type
      System.Type
      System.String
      System.Boolean)
    (static: System.Delegate System.Type System.Type System.String)
    (static:
      System.Delegate
      System.Type
      System.Type
      System.String
      System.Boolean
      System.Boolean)
    (static: System.Delegate System.Type System.Object System.String)
    (static: System.Delegate System.Type System.Reflection.MethodInfo)
    (static:
      System.Delegate
      System.Type
      System.Reflection.MethodInfo
      System.Boolean)
    (static:
      System.Delegate
      System.Type
      System.Object
      System.Reflection.MethodInfo)
    (static:
      System.Delegate
      System.Type
      System.Object
      System.Reflection.MethodInfo
      System.Boolean))
  (define-method-port
    remove-all
    System.Delegate
    RemoveAll
    (static: System.Delegate System.Delegate System.Delegate))
  (define-method-port clone System.Delegate Clone (System.Object))
  (define-method-port
    equals?
    System.Delegate
    Equals
    (System.Boolean System.Object))
  (define-field-port
    method
    #f
    #f
    (property:)
    System.Delegate
    Method
    System.Reflection.MethodInfo)
  (define-field-port
    target
    #f
    #f
    (property:)
    System.Delegate
    Target
    System.Object))
