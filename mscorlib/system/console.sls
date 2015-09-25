(library (system console)
  (export is?
          console?
          read
          set-buffer-size
          read-line
          beep
          read-key
          set-error
          write
          open-standard-output
          write-line
          move-buffer-area
          open-standard-input
          set-window-position
          set-window-size
          reset-color
          set-cursor-position
          clear
          set-out
          open-standard-error
          set-in
          error
          out
          in
          input-encoding-get
          input-encoding-set!
          input-encoding-update!
          output-encoding-get
          output-encoding-set!
          output-encoding-update!
          background-color-get
          background-color-set!
          background-color-update!
          buffer-height-get
          buffer-height-set!
          buffer-height-update!
          buffer-width-get
          buffer-width-set!
          buffer-width-update!
          caps-lock?
          cursor-left-get
          cursor-left-set!
          cursor-left-update!
          cursor-top-get
          cursor-top-set!
          cursor-top-update!
          cursor-size-get
          cursor-size-set!
          cursor-size-update!
          cursor-visible?-get
          cursor-visible?-set!
          cursor-visible?-update!
          foreground-color-get
          foreground-color-set!
          foreground-color-update!
          key-available?
          largest-window-height
          largest-window-width
          number-lock?
          title-get
          title-set!
          title-update!
          treat-control-cas-input?-get
          treat-control-cas-input?-set!
          treat-control-cas-input?-update!
          window-height-get
          window-height-set!
          window-height-update!
          window-left-get
          window-left-set!
          window-left-update!
          window-top-get
          window-top-set!
          window-top-update!
          window-width-get
          window-width-set!
          window-width-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Console a))
  (define (console? a) (clr-is System.Console a))
  (define-method-port read System.Console Read (static: System.Int32))
  (define-method-port
    set-buffer-size
    System.Console
    SetBufferSize
    (static: System.Void System.Int32 System.Int32))
  (define-method-port
    read-line
    System.Console
    ReadLine
    (static: System.String))
  (define-method-port
    beep
    System.Console
    Beep
    (static: System.Void System.Int32 System.Int32)
    (static: System.Void))
  (define-method-port
    read-key
    System.Console
    ReadKey
    (static: System.ConsoleKeyInfo System.Boolean)
    (static: System.ConsoleKeyInfo))
  (define-method-port
    set-error
    System.Console
    SetError
    (static: System.Void System.IO.TextWriter))
  (define-method-port
    write
    System.Console
    Write
    (static:
      System.Void
      System.String
      System.Object
      System.Object
      System.Object)
    (static: System.Void System.String System.Object System.Object)
    (static: System.Void System.Char[] System.Int32 System.Int32)
    (static: System.Void System.String System.Object[])
    (static: System.Void System.String System.Object)
    (static: System.Void System.UInt64)
    (static: System.Void System.UInt32)
    (static: System.Void System.String)
    (static: System.Void System.Single)
    (static: System.Void System.Object)
    (static: System.Void System.Int64)
    (static: System.Void System.Int32)
    (static: System.Void System.Double)
    (static: System.Void System.Decimal)
    (static: System.Void System.Char[])
    (static: System.Void System.Char)
    (static: System.Void System.Boolean))
  (define-method-port
    open-standard-output
    System.Console
    OpenStandardOutput
    (static: System.IO.Stream System.Int32)
    (static: System.IO.Stream))
  (define-method-port
    write-line
    System.Console
    WriteLine
    (static:
      System.Void
      System.String
      System.Object
      System.Object
      System.Object)
    (static: System.Void System.String System.Object System.Object)
    (static: System.Void System.Char[] System.Int32 System.Int32)
    (static: System.Void System.String System.Object[])
    (static: System.Void System.String System.Object)
    (static: System.Void System.UInt64)
    (static: System.Void System.UInt32)
    (static: System.Void System.String)
    (static: System.Void System.Single)
    (static: System.Void System.Object)
    (static: System.Void System.Int64)
    (static: System.Void System.Int32)
    (static: System.Void System.Double)
    (static: System.Void System.Decimal)
    (static: System.Void System.Char[])
    (static: System.Void System.Char)
    (static: System.Void System.Boolean)
    (static: System.Void))
  (define-method-port
    move-buffer-area
    System.Console
    MoveBufferArea
    (static:
      System.Void
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Char
      System.ConsoleColor
      System.ConsoleColor)
    (static:
      System.Void
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32))
  (define-method-port
    open-standard-input
    System.Console
    OpenStandardInput
    (static: System.IO.Stream System.Int32)
    (static: System.IO.Stream))
  (define-method-port
    set-window-position
    System.Console
    SetWindowPosition
    (static: System.Void System.Int32 System.Int32))
  (define-method-port
    set-window-size
    System.Console
    SetWindowSize
    (static: System.Void System.Int32 System.Int32))
  (define-method-port
    reset-color
    System.Console
    ResetColor
    (static: System.Void))
  (define-method-port
    set-cursor-position
    System.Console
    SetCursorPosition
    (static: System.Void System.Int32 System.Int32))
  (define-method-port clear System.Console Clear (static: System.Void))
  (define-method-port
    set-out
    System.Console
    SetOut
    (static: System.Void System.IO.TextWriter))
  (define-method-port
    open-standard-error
    System.Console
    OpenStandardError
    (static: System.IO.Stream System.Int32)
    (static: System.IO.Stream))
  (define-method-port
    set-in
    System.Console
    SetIn
    (static: System.Void System.IO.TextReader))
  (define-field-port
    error
    #f
    #f
    (static: property:)
    System.Console
    Error
    System.IO.TextWriter)
  (define-field-port
    out
    #f
    #f
    (static: property:)
    System.Console
    Out
    System.IO.TextWriter)
  (define-field-port
    in
    #f
    #f
    (static: property:)
    System.Console
    In
    System.IO.TextReader)
  (define-field-port
    input-encoding-get
    input-encoding-set!
    input-encoding-update!
    (static: property:)
    System.Console
    InputEncoding
    System.Text.Encoding)
  (define-field-port
    output-encoding-get
    output-encoding-set!
    output-encoding-update!
    (static: property:)
    System.Console
    OutputEncoding
    System.Text.Encoding)
  (define-field-port
    background-color-get
    background-color-set!
    background-color-update!
    (static: property:)
    System.Console
    BackgroundColor
    System.ConsoleColor)
  (define-field-port
    buffer-height-get
    buffer-height-set!
    buffer-height-update!
    (static: property:)
    System.Console
    BufferHeight
    System.Int32)
  (define-field-port
    buffer-width-get
    buffer-width-set!
    buffer-width-update!
    (static: property:)
    System.Console
    BufferWidth
    System.Int32)
  (define-field-port
    caps-lock?
    #f
    #f
    (static: property:)
    System.Console
    CapsLock
    System.Boolean)
  (define-field-port
    cursor-left-get
    cursor-left-set!
    cursor-left-update!
    (static: property:)
    System.Console
    CursorLeft
    System.Int32)
  (define-field-port
    cursor-top-get
    cursor-top-set!
    cursor-top-update!
    (static: property:)
    System.Console
    CursorTop
    System.Int32)
  (define-field-port
    cursor-size-get
    cursor-size-set!
    cursor-size-update!
    (static: property:)
    System.Console
    CursorSize
    System.Int32)
  (define-field-port
    cursor-visible?-get
    cursor-visible?-set!
    cursor-visible?-update!
    (static: property:)
    System.Console
    CursorVisible
    System.Boolean)
  (define-field-port
    foreground-color-get
    foreground-color-set!
    foreground-color-update!
    (static: property:)
    System.Console
    ForegroundColor
    System.ConsoleColor)
  (define-field-port
    key-available?
    #f
    #f
    (static: property:)
    System.Console
    KeyAvailable
    System.Boolean)
  (define-field-port
    largest-window-height
    #f
    #f
    (static: property:)
    System.Console
    LargestWindowHeight
    System.Int32)
  (define-field-port
    largest-window-width
    #f
    #f
    (static: property:)
    System.Console
    LargestWindowWidth
    System.Int32)
  (define-field-port
    number-lock?
    #f
    #f
    (static: property:)
    System.Console
    NumberLock
    System.Boolean)
  (define-field-port
    title-get
    title-set!
    title-update!
    (static: property:)
    System.Console
    Title
    System.String)
  (define-field-port
    treat-control-cas-input?-get
    treat-control-cas-input?-set!
    treat-control-cas-input?-update!
    (static: property:)
    System.Console
    TreatControlCAsInput
    System.Boolean)
  (define-field-port
    window-height-get
    window-height-set!
    window-height-update!
    (static: property:)
    System.Console
    WindowHeight
    System.Int32)
  (define-field-port
    window-left-get
    window-left-set!
    window-left-update!
    (static: property:)
    System.Console
    WindowLeft
    System.Int32)
  (define-field-port
    window-top-get
    window-top-set!
    window-top-update!
    (static: property:)
    System.Console
    WindowTop
    System.Int32)
  (define-field-port
    window-width-get
    window-width-set!
    window-width-update!
    (static: property:)
    System.Console
    WindowWidth
    System.Int32))
