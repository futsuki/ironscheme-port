(library (unity-engine events argument-cache)
  (export new
          is?
          argument-cache?
          on-before-serialize
          on-after-deserialize
          unity-object-argument-get
          unity-object-argument-set!
          unity-object-argument-update!
          unity-object-argument-assembly-type-name
          int-argument-get
          int-argument-set!
          int-argument-update!
          float-argument-get
          float-argument-set!
          float-argument-update!
          string-argument-get
          string-argument-set!
          string-argument-update!
          bool-argument?-get
          bool-argument?-set!
          bool-argument?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Events.ArgumentCache a ...)))))
  (define (is? a) (clr-is UnityEngine.Events.ArgumentCache a))
  (define (argument-cache? a)
    (clr-is UnityEngine.Events.ArgumentCache a))
  (define-method-port
    on-before-serialize
    UnityEngine.Events.ArgumentCache
    OnBeforeSerialize
    (System.Void))
  (define-method-port
    on-after-deserialize
    UnityEngine.Events.ArgumentCache
    OnAfterDeserialize
    (System.Void))
  (define-field-port
    unity-object-argument-get
    unity-object-argument-set!
    unity-object-argument-update!
    (property:)
    UnityEngine.Events.ArgumentCache
    unityObjectArgument
    UnityEngine.Object)
  (define-field-port
    unity-object-argument-assembly-type-name
    #f
    #f
    (property:)
    UnityEngine.Events.ArgumentCache
    unityObjectArgumentAssemblyTypeName
    System.String)
  (define-field-port
    int-argument-get
    int-argument-set!
    int-argument-update!
    (property:)
    UnityEngine.Events.ArgumentCache
    intArgument
    System.Int32)
  (define-field-port
    float-argument-get
    float-argument-set!
    float-argument-update!
    (property:)
    UnityEngine.Events.ArgumentCache
    floatArgument
    System.Single)
  (define-field-port
    string-argument-get
    string-argument-set!
    string-argument-update!
    (property:)
    UnityEngine.Events.ArgumentCache
    stringArgument
    System.String)
  (define-field-port
    bool-argument?-get
    bool-argument?-set!
    bool-argument?-update!
    (property:)
    UnityEngine.Events.ArgumentCache
    boolArgument
    System.Boolean))
