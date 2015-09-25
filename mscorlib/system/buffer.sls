(library (system buffer)
  (export is? buffer? byte-length block-copy set-byte get-byte)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Buffer a))
  (define (buffer? a) (clr-is System.Buffer a))
  (define-method-port
    byte-length
    System.Buffer
    ByteLength
    (static: System.Int32 System.Array))
  (define-method-port
    block-copy
    System.Buffer
    BlockCopy
    (static:
      System.Void
      System.Array
      System.Int32
      System.Array
      System.Int32
      System.Int32))
  (define-method-port
    set-byte
    System.Buffer
    SetByte
    (static: System.Void System.Array System.Int32 System.Byte))
  (define-method-port
    get-byte
    System.Buffer
    GetByte
    (static: System.Byte System.Array System.Int32)))
