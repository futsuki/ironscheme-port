(library (unity-engine networking network-writer)
  (export new
          is?
          network-writer?
          finish-message
          start-message
          write
          write-packed-uint32
          write-bytes-and-size
          as-array
          write-packed-uint64
          write-bytes-full
          seek-zero
          to-array
          position)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.NetworkWriter a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.NetworkWriter a))
  (define (network-writer? a)
    (clr-is UnityEngine.Networking.NetworkWriter a))
  (define-method-port
    finish-message
    UnityEngine.Networking.NetworkWriter
    FinishMessage
    (System.Void))
  (define-method-port
    start-message
    UnityEngine.Networking.NetworkWriter
    StartMessage
    (System.Void System.Int16))
  (define-method-port
    write
    UnityEngine.Networking.NetworkWriter
    Write
    (System.Void UnityEngine.Networking.MessageBase)
    (System.Void UnityEngine.GameObject)
    (System.Void UnityEngine.Transform)
    (System.Void UnityEngine.Networking.NetworkIdentity)
    (System.Void UnityEngine.Networking.NetworkHash128)
    (System.Void UnityEngine.Matrix4x4)
    (System.Void UnityEngine.Ray)
    (System.Void UnityEngine.Plane)
    (System.Void UnityEngine.Rect)
    (System.Void UnityEngine.Quaternion)
    (System.Void UnityEngine.Color32)
    (System.Void UnityEngine.Color)
    (System.Void UnityEngine.Vector4)
    (System.Void UnityEngine.Vector3)
    (System.Void UnityEngine.Vector2)
    (System.Void System.Byte[] System.Int32 System.Int32)
    (System.Void System.Boolean)
    (System.Void System.String)
    (System.Void System.Double)
    (System.Void System.Single)
    (System.Void System.UInt64)
    (System.Void System.Int64)
    (System.Void System.UInt32)
    (System.Void System.Int32)
    (System.Void System.UInt16)
    (System.Void System.Int16)
    (System.Void System.SByte)
    (System.Void System.Byte)
    (System.Void System.Char)
    (System.Void UnityEngine.Networking.NetworkSceneId)
    (System.Void UnityEngine.Networking.NetworkInstanceId))
  (define-method-port
    write-packed-uint32
    UnityEngine.Networking.NetworkWriter
    WritePackedUInt32
    (System.Void System.UInt32))
  (define-method-port
    write-bytes-and-size
    UnityEngine.Networking.NetworkWriter
    WriteBytesAndSize
    (System.Void System.Byte[] System.Int32))
  (define-method-port
    as-array
    UnityEngine.Networking.NetworkWriter
    AsArray
    (System.Byte[]))
  (define-method-port
    write-packed-uint64
    UnityEngine.Networking.NetworkWriter
    WritePackedUInt64
    (System.Void System.UInt64))
  (define-method-port
    write-bytes-full
    UnityEngine.Networking.NetworkWriter
    WriteBytesFull
    (System.Void System.Byte[]))
  (define-method-port
    seek-zero
    UnityEngine.Networking.NetworkWriter
    SeekZero
    (System.Void))
  (define-method-port
    to-array
    UnityEngine.Networking.NetworkWriter
    ToArray
    (System.Byte[]))
  (define-field-port
    position
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkWriter
    Position
    System.Int16))
