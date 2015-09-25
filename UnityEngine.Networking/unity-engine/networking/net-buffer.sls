(library (unity-engine networking net-buffer)
  (export new
          is?
          net-buffer?
          read-bytes
          finish-message
          read-byte
          seek-zero
          replace
          write-bytes
          read-chars
          write-byte2
          write-byte
          write-byte4
          to-string
          write-byte8
          position)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.NetBuffer a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.NetBuffer a))
  (define (net-buffer? a) (clr-is UnityEngine.Networking.NetBuffer a))
  (define-method-port
    read-bytes
    UnityEngine.Networking.NetBuffer
    ReadBytes
    (System.Void System.Byte[] System.UInt32))
  (define-method-port
    finish-message
    UnityEngine.Networking.NetBuffer
    FinishMessage
    (System.Void))
  (define-method-port
    read-byte
    UnityEngine.Networking.NetBuffer
    ReadByte
    (System.Byte))
  (define-method-port
    seek-zero
    UnityEngine.Networking.NetBuffer
    SeekZero
    (System.Void))
  (define-method-port
    replace
    UnityEngine.Networking.NetBuffer
    Replace
    (System.Void System.Byte[]))
  (define-method-port
    write-bytes
    UnityEngine.Networking.NetBuffer
    WriteBytes
    (System.Void System.Byte[] System.UInt16))
  (define-method-port
    read-chars
    UnityEngine.Networking.NetBuffer
    ReadChars
    (System.Void System.Char[] System.UInt32))
  (define-method-port
    write-byte2
    UnityEngine.Networking.NetBuffer
    WriteByte2
    (System.Void System.Byte System.Byte))
  (define-method-port
    write-byte
    UnityEngine.Networking.NetBuffer
    WriteByte
    (System.Void System.Byte))
  (define-method-port
    write-byte4
    UnityEngine.Networking.NetBuffer
    WriteByte4
    (System.Void System.Byte System.Byte System.Byte System.Byte))
  (define-method-port
    to-string
    UnityEngine.Networking.NetBuffer
    ToString
    (System.String))
  (define-method-port
    write-byte8
    UnityEngine.Networking.NetBuffer
    WriteByte8
    (System.Void
      System.Byte
      System.Byte
      System.Byte
      System.Byte
      System.Byte
      System.Byte
      System.Byte
      System.Byte))
  (define-field-port
    position
    #f
    #f
    (property:)
    UnityEngine.Networking.NetBuffer
    Position
    System.UInt32))
