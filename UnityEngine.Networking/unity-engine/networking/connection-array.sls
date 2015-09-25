(library (unity-engine networking connection-array)
  (export new
          is?
          connection-array?
          contains-player?
          get-unsafe
          get
          add-local
          add
          remove
          count
          local-index)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.ConnectionArray a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.ConnectionArray a))
  (define (connection-array? a)
    (clr-is UnityEngine.Networking.ConnectionArray a))
  (define-method-port
    contains-player?
    UnityEngine.Networking.ConnectionArray
    ContainsPlayer
    (System.Boolean
      UnityEngine.GameObject
      UnityEngine.Networking.NetworkConnection&))
  (define-method-port
    get-unsafe
    UnityEngine.Networking.ConnectionArray
    GetUnsafe
    (UnityEngine.Networking.NetworkConnection System.Int32))
  (define-method-port
    get
    UnityEngine.Networking.ConnectionArray
    Get
    (UnityEngine.Networking.NetworkConnection System.Int32))
  (define-method-port
    add-local
    UnityEngine.Networking.ConnectionArray
    AddLocal
    (System.Int32 UnityEngine.Networking.NetworkConnection))
  (define-method-port
    add
    UnityEngine.Networking.ConnectionArray
    Add
    (System.Int32
      System.Int32
      UnityEngine.Networking.NetworkConnection))
  (define-method-port
    remove
    UnityEngine.Networking.ConnectionArray
    Remove
    (System.Void System.Int32))
  (define-field-port
    count
    #f
    #f
    (property:)
    UnityEngine.Networking.ConnectionArray
    Count
    System.Int32)
  (define-field-port
    local-index
    #f
    #f
    (property:)
    UnityEngine.Networking.ConnectionArray
    LocalIndex
    System.Int32))
