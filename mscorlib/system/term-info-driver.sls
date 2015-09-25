(library (system term-info-driver)
  (export new
          is?
          term-info-driver?
          read
          set-buffer-size
          read-line
          init
          is-special-key?
          beep
          read-key
          move-buffer-area
          set-window-size
          write-special-key
          set-window-position
          set-cursor-position
          clear
          reset-color
          initialized?
          background-color-get
          background-color-set!
          background-color-update!
          foreground-color-get
          foreground-color-set!
          foreground-color-update!
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
          cursor-visible?-get
          cursor-visible?-set!
          cursor-visible?-update!
          cursor-size-get
          cursor-size-set!
          cursor-size-update!
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
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.TermInfoDriver a ...)))))
  (define (is? a) (clr-is System.TermInfoDriver a))
  (define (term-info-driver? a) (clr-is System.TermInfoDriver a))
  (define-method-port
    read
    System.TermInfoDriver
    Read
    (System.Int32 System.Char[] System.Int32 System.Int32))
  (define-method-port
    set-buffer-size
    System.TermInfoDriver
    SetBufferSize
    (System.Void System.Int32 System.Int32))
  (define-method-port
    read-line
    System.TermInfoDriver
    ReadLine
    (System.String))
  (define-method-port init System.TermInfoDriver Init (System.Void))
  (define-method-port
    is-special-key?
    System.TermInfoDriver
    IsSpecialKey
    (System.Boolean System.Char)
    (System.Boolean System.ConsoleKeyInfo))
  (define-method-port
    beep
    System.TermInfoDriver
    Beep
    (System.Void System.Int32 System.Int32))
  (define-method-port
    read-key
    System.TermInfoDriver
    ReadKey
    (System.ConsoleKeyInfo System.Boolean))
  (define-method-port
    move-buffer-area
    System.TermInfoDriver
    MoveBufferArea
    (System.Void
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Char
      System.ConsoleColor
      System.ConsoleColor))
  (define-method-port
    set-window-size
    System.TermInfoDriver
    SetWindowSize
    (System.Void System.Int32 System.Int32))
  (define-method-port
    write-special-key
    System.TermInfoDriver
    WriteSpecialKey
    (System.Void System.Char)
    (System.Void System.ConsoleKeyInfo))
  (define-method-port
    set-window-position
    System.TermInfoDriver
    SetWindowPosition
    (System.Void System.Int32 System.Int32))
  (define-method-port
    set-cursor-position
    System.TermInfoDriver
    SetCursorPosition
    (System.Void System.Int32 System.Int32))
  (define-method-port clear System.TermInfoDriver Clear (System.Void))
  (define-method-port
    reset-color
    System.TermInfoDriver
    ResetColor
    (System.Void))
  (define-field-port
    initialized?
    #f
    #f
    (property:)
    System.TermInfoDriver
    Initialized
    System.Boolean)
  (define-field-port
    background-color-get
    background-color-set!
    background-color-update!
    (property:)
    System.TermInfoDriver
    BackgroundColor
    System.ConsoleColor)
  (define-field-port
    foreground-color-get
    foreground-color-set!
    foreground-color-update!
    (property:)
    System.TermInfoDriver
    ForegroundColor
    System.ConsoleColor)
  (define-field-port
    buffer-height-get
    buffer-height-set!
    buffer-height-update!
    (property:)
    System.TermInfoDriver
    BufferHeight
    System.Int32)
  (define-field-port
    buffer-width-get
    buffer-width-set!
    buffer-width-update!
    (property:)
    System.TermInfoDriver
    BufferWidth
    System.Int32)
  (define-field-port
    caps-lock?
    #f
    #f
    (property:)
    System.TermInfoDriver
    CapsLock
    System.Boolean)
  (define-field-port
    cursor-left-get
    cursor-left-set!
    cursor-left-update!
    (property:)
    System.TermInfoDriver
    CursorLeft
    System.Int32)
  (define-field-port
    cursor-top-get
    cursor-top-set!
    cursor-top-update!
    (property:)
    System.TermInfoDriver
    CursorTop
    System.Int32)
  (define-field-port
    cursor-visible?-get
    cursor-visible?-set!
    cursor-visible?-update!
    (property:)
    System.TermInfoDriver
    CursorVisible
    System.Boolean)
  (define-field-port
    cursor-size-get
    cursor-size-set!
    cursor-size-update!
    (property:)
    System.TermInfoDriver
    CursorSize
    System.Int32)
  (define-field-port
    key-available?
    #f
    #f
    (property:)
    System.TermInfoDriver
    KeyAvailable
    System.Boolean)
  (define-field-port
    largest-window-height
    #f
    #f
    (property:)
    System.TermInfoDriver
    LargestWindowHeight
    System.Int32)
  (define-field-port
    largest-window-width
    #f
    #f
    (property:)
    System.TermInfoDriver
    LargestWindowWidth
    System.Int32)
  (define-field-port
    number-lock?
    #f
    #f
    (property:)
    System.TermInfoDriver
    NumberLock
    System.Boolean)
  (define-field-port
    title-get
    title-set!
    title-update!
    (property:)
    System.TermInfoDriver
    Title
    System.String)
  (define-field-port
    treat-control-cas-input?-get
    treat-control-cas-input?-set!
    treat-control-cas-input?-update!
    (property:)
    System.TermInfoDriver
    TreatControlCAsInput
    System.Boolean)
  (define-field-port
    window-height-get
    window-height-set!
    window-height-update!
    (property:)
    System.TermInfoDriver
    WindowHeight
    System.Int32)
  (define-field-port
    window-left-get
    window-left-set!
    window-left-update!
    (property:)
    System.TermInfoDriver
    WindowLeft
    System.Int32)
  (define-field-port
    window-top-get
    window-top-set!
    window-top-update!
    (property:)
    System.TermInfoDriver
    WindowTop
    System.Int32)
  (define-field-port
    window-width-get
    window-width-set!
    window-width-update!
    (property:)
    System.TermInfoDriver
    WindowWidth
    System.Int32))