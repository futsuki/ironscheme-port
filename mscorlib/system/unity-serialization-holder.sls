(library (system unity-serialization-holder)
  (export is?
          unity-serialization-holder?
          get-type-data
          get-module-data
          get-object-data
          get-assembly-data
          get-dbnull-data
          get-real-object)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.UnitySerializationHolder a))
  (define (unity-serialization-holder? a)
    (clr-is System.UnitySerializationHolder a))
  (define-method-port
    get-type-data
    System.UnitySerializationHolder
    GetTypeData
    (static:
      System.Void
      System.Type
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-module-data
    System.UnitySerializationHolder
    GetModuleData
    (static:
      System.Void
      System.Reflection.Module
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-object-data
    System.UnitySerializationHolder
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-assembly-data
    System.UnitySerializationHolder
    GetAssemblyData
    (static:
      System.Void
      System.Reflection.Assembly
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-dbnull-data
    System.UnitySerializationHolder
    GetDBNullData
    (static:
      System.Void
      System.DBNull
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-real-object
    System.UnitySerializationHolder
    GetRealObject
    (System.Object System.Runtime.Serialization.StreamingContext)))
