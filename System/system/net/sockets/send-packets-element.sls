(library (system net sockets send-packets-element)
  (export new
          is?
          send-packets-element?
          buffer
          count
          end-of-packet?
          file-path
          offset)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.Sockets.SendPacketsElement a ...)))))
  (define (is? a) (clr-is System.Net.Sockets.SendPacketsElement a))
  (define (send-packets-element? a)
    (clr-is System.Net.Sockets.SendPacketsElement a))
  (define-field-port
    buffer
    #f
    #f
    (property:)
    System.Net.Sockets.SendPacketsElement
    Buffer
    System.Byte[])
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Net.Sockets.SendPacketsElement
    Count
    System.Int32)
  (define-field-port
    end-of-packet?
    #f
    #f
    (property:)
    System.Net.Sockets.SendPacketsElement
    EndOfPacket
    System.Boolean)
  (define-field-port
    file-path
    #f
    #f
    (property:)
    System.Net.Sockets.SendPacketsElement
    FilePath
    System.String)
  (define-field-port
    offset
    #f
    #f
    (property:)
    System.Net.Sockets.SendPacketsElement
    Offset
    System.Int32))
