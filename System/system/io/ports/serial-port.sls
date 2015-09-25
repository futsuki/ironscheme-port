(library (system io ports serial-port)
  (export new
          is?
          serial-port?
          read
          get-port-names
          discard-in-buffer
          write-line
          read-byte
          read-to
          open
          write
          read-line
          read-existing
          read-char
          discard-out-buffer
          close
          infinite-timeout
          base-stream
          baud-rate-get
          baud-rate-set!
          baud-rate-update!
          break-state?-get
          break-state?-set!
          break-state?-update!
          bytes-to-read
          bytes-to-write
          cdholding?
          cts-holding?
          data-bits-get
          data-bits-set!
          data-bits-update!
          discard-null?-get
          discard-null?-set!
          discard-null?-update!
          dsr-holding?
          dtr-enable?-get
          dtr-enable?-set!
          dtr-enable?-update!
          encoding-get
          encoding-set!
          encoding-update!
          handshake-get
          handshake-set!
          handshake-update!
          is-open?
          new-line-get
          new-line-set!
          new-line-update!
          parity-get
          parity-set!
          parity-update!
          parity-replace-get
          parity-replace-set!
          parity-replace-update!
          port-name-get
          port-name-set!
          port-name-update!
          read-buffer-size-get
          read-buffer-size-set!
          read-buffer-size-update!
          read-timeout-get
          read-timeout-set!
          read-timeout-update!
          received-bytes-threshold-get
          received-bytes-threshold-set!
          received-bytes-threshold-update!
          rts-enable?-get
          rts-enable?-set!
          rts-enable?-update!
          stop-bits-get
          stop-bits-set!
          stop-bits-update!
          write-buffer-size-get
          write-buffer-size-set!
          write-buffer-size-update!
          write-timeout-get
          write-timeout-set!
          write-timeout-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.Ports.SerialPort a ...)))))
  (define (is? a) (clr-is System.IO.Ports.SerialPort a))
  (define (serial-port? a) (clr-is System.IO.Ports.SerialPort a))
  (define-method-port
    read
    System.IO.Ports.SerialPort
    Read
    (System.Int32 System.Char[] System.Int32 System.Int32)
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    get-port-names
    System.IO.Ports.SerialPort
    GetPortNames
    (static: System.String[]))
  (define-method-port
    discard-in-buffer
    System.IO.Ports.SerialPort
    DiscardInBuffer
    (System.Void))
  (define-method-port
    write-line
    System.IO.Ports.SerialPort
    WriteLine
    (System.Void System.String))
  (define-method-port
    read-byte
    System.IO.Ports.SerialPort
    ReadByte
    (System.Int32))
  (define-method-port
    read-to
    System.IO.Ports.SerialPort
    ReadTo
    (System.String System.String))
  (define-method-port
    open
    System.IO.Ports.SerialPort
    Open
    (System.Void))
  (define-method-port
    write
    System.IO.Ports.SerialPort
    Write
    (System.Void System.Char[] System.Int32 System.Int32)
    (System.Void System.Byte[] System.Int32 System.Int32)
    (System.Void System.String))
  (define-method-port
    read-line
    System.IO.Ports.SerialPort
    ReadLine
    (System.String))
  (define-method-port
    read-existing
    System.IO.Ports.SerialPort
    ReadExisting
    (System.String))
  (define-method-port
    read-char
    System.IO.Ports.SerialPort
    ReadChar
    (System.Int32))
  (define-method-port
    discard-out-buffer
    System.IO.Ports.SerialPort
    DiscardOutBuffer
    (System.Void))
  (define-method-port
    close
    System.IO.Ports.SerialPort
    Close
    (System.Void))
  (define-field-port
    infinite-timeout
    #f
    #f
    (static:)
    System.IO.Ports.SerialPort
    InfiniteTimeout
    System.Int32)
  (define-field-port
    base-stream
    #f
    #f
    (property:)
    System.IO.Ports.SerialPort
    BaseStream
    System.IO.Stream)
  (define-field-port
    baud-rate-get
    baud-rate-set!
    baud-rate-update!
    (property:)
    System.IO.Ports.SerialPort
    BaudRate
    System.Int32)
  (define-field-port
    break-state?-get
    break-state?-set!
    break-state?-update!
    (property:)
    System.IO.Ports.SerialPort
    BreakState
    System.Boolean)
  (define-field-port
    bytes-to-read
    #f
    #f
    (property:)
    System.IO.Ports.SerialPort
    BytesToRead
    System.Int32)
  (define-field-port
    bytes-to-write
    #f
    #f
    (property:)
    System.IO.Ports.SerialPort
    BytesToWrite
    System.Int32)
  (define-field-port
    cdholding?
    #f
    #f
    (property:)
    System.IO.Ports.SerialPort
    CDHolding
    System.Boolean)
  (define-field-port
    cts-holding?
    #f
    #f
    (property:)
    System.IO.Ports.SerialPort
    CtsHolding
    System.Boolean)
  (define-field-port
    data-bits-get
    data-bits-set!
    data-bits-update!
    (property:)
    System.IO.Ports.SerialPort
    DataBits
    System.Int32)
  (define-field-port
    discard-null?-get
    discard-null?-set!
    discard-null?-update!
    (property:)
    System.IO.Ports.SerialPort
    DiscardNull
    System.Boolean)
  (define-field-port
    dsr-holding?
    #f
    #f
    (property:)
    System.IO.Ports.SerialPort
    DsrHolding
    System.Boolean)
  (define-field-port
    dtr-enable?-get
    dtr-enable?-set!
    dtr-enable?-update!
    (property:)
    System.IO.Ports.SerialPort
    DtrEnable
    System.Boolean)
  (define-field-port
    encoding-get
    encoding-set!
    encoding-update!
    (property:)
    System.IO.Ports.SerialPort
    Encoding
    System.Text.Encoding)
  (define-field-port
    handshake-get
    handshake-set!
    handshake-update!
    (property:)
    System.IO.Ports.SerialPort
    Handshake
    System.IO.Ports.Handshake)
  (define-field-port
    is-open?
    #f
    #f
    (property:)
    System.IO.Ports.SerialPort
    IsOpen
    System.Boolean)
  (define-field-port
    new-line-get
    new-line-set!
    new-line-update!
    (property:)
    System.IO.Ports.SerialPort
    NewLine
    System.String)
  (define-field-port
    parity-get
    parity-set!
    parity-update!
    (property:)
    System.IO.Ports.SerialPort
    Parity
    System.IO.Ports.Parity)
  (define-field-port
    parity-replace-get
    parity-replace-set!
    parity-replace-update!
    (property:)
    System.IO.Ports.SerialPort
    ParityReplace
    System.Byte)
  (define-field-port
    port-name-get
    port-name-set!
    port-name-update!
    (property:)
    System.IO.Ports.SerialPort
    PortName
    System.String)
  (define-field-port
    read-buffer-size-get
    read-buffer-size-set!
    read-buffer-size-update!
    (property:)
    System.IO.Ports.SerialPort
    ReadBufferSize
    System.Int32)
  (define-field-port
    read-timeout-get
    read-timeout-set!
    read-timeout-update!
    (property:)
    System.IO.Ports.SerialPort
    ReadTimeout
    System.Int32)
  (define-field-port
    received-bytes-threshold-get
    received-bytes-threshold-set!
    received-bytes-threshold-update!
    (property:)
    System.IO.Ports.SerialPort
    ReceivedBytesThreshold
    System.Int32)
  (define-field-port
    rts-enable?-get
    rts-enable?-set!
    rts-enable?-update!
    (property:)
    System.IO.Ports.SerialPort
    RtsEnable
    System.Boolean)
  (define-field-port
    stop-bits-get
    stop-bits-set!
    stop-bits-update!
    (property:)
    System.IO.Ports.SerialPort
    StopBits
    System.IO.Ports.StopBits)
  (define-field-port
    write-buffer-size-get
    write-buffer-size-set!
    write-buffer-size-update!
    (property:)
    System.IO.Ports.SerialPort
    WriteBufferSize
    System.Int32)
  (define-field-port
    write-timeout-get
    write-timeout-set!
    write-timeout-update!
    (property:)
    System.IO.Ports.SerialPort
    WriteTimeout
    System.Int32))