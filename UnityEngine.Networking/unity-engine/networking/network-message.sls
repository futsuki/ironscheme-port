(library (unity-engine networking network-message)
  (export new
          is?
          network-message?
          read-message
          dump
          msg-type-get
          msg-type-set!
          msg-type-update!
          conn-get
          conn-set!
          conn-update!
          reader-get
          reader-set!
          reader-update!
          channel-id-get
          channel-id-set!
          channel-id-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.NetworkMessage a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.NetworkMessage a))
  (define (network-message? a)
    (clr-is UnityEngine.Networking.NetworkMessage a))
  (define-method-port
    read-message
    UnityEngine.Networking.NetworkMessage
    ReadMessage)
  (define-method-port
    dump
    UnityEngine.Networking.NetworkMessage
    Dump
    (static: System.String System.Byte[] System.Int32))
  (define-field-port
    msg-type-get
    msg-type-set!
    msg-type-update!
    ()
    UnityEngine.Networking.NetworkMessage
    msgType
    System.Int16)
  (define-field-port
    conn-get
    conn-set!
    conn-update!
    ()
    UnityEngine.Networking.NetworkMessage
    conn
    UnityEngine.Networking.NetworkConnection)
  (define-field-port
    reader-get
    reader-set!
    reader-update!
    ()
    UnityEngine.Networking.NetworkMessage
    reader
    UnityEngine.Networking.NetworkReader)
  (define-field-port
    channel-id-get
    channel-id-set!
    channel-id-update!
    ()
    UnityEngine.Networking.NetworkMessage
    channelId
    System.Int32))
