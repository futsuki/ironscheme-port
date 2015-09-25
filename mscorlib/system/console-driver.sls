(library (system console-driver)
  (export new
          is?
          console-driver?
          read
          set-buffer-size
          read-line
          init
          beep
          read-key
          move-buffer-area
          set-window-size
          set-window-position
          set-cursor-position
          clear
          reset-color
          initialized?
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
          cursor-size-get
          cursor-size-set!
          cursor-size-update!
          cursor-top-get
          cursor-top-set!
          cursor-top-update!
          cursor-visible?-get
          cursor-visible?-set!
          cursor-visible?-update!
          key-available?
          foreground-color-get
          foreground-color-set!
          foreground-color-update!
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
          window-width-update!
          is-console?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.ConsoleDriver a ...)))))
  (define (is? a) (clr-is System.ConsoleDriver a))
  (define (console-driver? a) (clr-is System.ConsoleDriver a))
  (define-method-port
    read
    System.ConsoleDriver
    Read
    (static: System.Int32))
  (define-method-port
    set-buffer-size
    System.ConsoleDriver
    SetBufferSize
    (static: System.Void System.Int32 System.Int32))
  (define-method-port
    read-line
    System.ConsoleDriver
    ReadLine
    (static: System.String))
  (define-method-port
    init
    System.ConsoleDriver
    Init
    (static: System.Void))
  (define-method-port
    beep
    System.ConsoleDriver
    Beep
    (static: System.Void System.Int32 System.Int32))
  (define-method-port
    read-key
    System.ConsoleDriver
    ReadKey
    (static: System.ConsoleKeyInfo System.Boolean))
  (define-method-port
    move-buffer-area
    System.ConsoleDriver
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
    set-window-size
    System.ConsoleDriver
    SetWindowSize
    (static: System.Void System.Int32 System.Int32))
  (define-method-port
    set-window-position
    System.ConsoleDriver
    SetWindowPosition
    (static: System.Void System.Int32 System.Int32))
  (define-method-port
    set-cursor-position
    System.ConsoleDriver
    SetCursorPosition
    (static: System.Void System.Int32 System.Int32))
  (define-method-port
    clear
    System.ConsoleDriver
    Clear
    (static: System.Void))
  (define-method-port
    reset-color
    System.ConsoleDriver
    ResetColor
    (static: System.Void))
  (define-field-port
    initialized?
    #f
    #f
    (static: property:)
    System.ConsoleDriver
    Initialized
    System.Boolean)
  (define-field-port
    background-color-get
    background-color-set!
    background-color-update!
    (static: property:)
    System.ConsoleDriver
    BackgroundColor
    System.ConsoleColor)
  (define-field-port
    buffer-height-get
    buffer-height-set!
    buffer-height-update!
    (static: property:)
    System.ConsoleDriver
    BufferHeight
    System.Int32)
  (define-field-port
    buffer-width-get
    buffer-width-set!
    buffer-width-update!
    (static: property:)
    System.ConsoleDriver
    BufferWidth
    System.Int32)
  (define-field-port
    caps-lock?
    #f
    #f
    (static: property:)
    System.ConsoleDriver
    CapsLock
    System.Boolean)
  (define-field-port
    cursor-left-get
    cursor-left-set!
    cursor-left-update!
    (static: property:)
    System.ConsoleDriver
    CursorLeft
    System.Int32)
  (define-field-port
    cursor-size-get
    cursor-size-set!
    cursor-size-update!
    (static: property:)
    System.ConsoleDriver
    CursorSize
    System.Int32)
  (define-field-port
    cursor-top-get
    cursor-top-set!
    cursor-top-update!
    (static: property:)
    System.ConsoleDriver
    CursorTop
    System.Int32)
  (define-field-port
    cursor-visible?-get
    cursor-visible?-set!
    cursor-visible?-update!
    (static: property:)
    System.ConsoleDriver
    CursorVisible
    System.Boolean)
  (define-field-port
    key-available?
    #f
    #f
    (static: property:)
    System.ConsoleDriver
    KeyAvailable
    System.Boolean)
  (define-field-port
    foreground-color-get
    foreground-color-set!
    foreground-color-update!
    (static: property:)
    System.ConsoleDriver
    ForegroundColor
    System.ConsoleColor)
  (define-field-port
    largest-window-height
    #f
    #f
    (static: property:)
    System.ConsoleDriver
    LargestWindowHeight
    System.Int32)
  (define-field-port
    largest-window-width
    #f
    #f
    (static: property:)
    System.ConsoleDriver
    LargestWindowWidth
    System.Int32)
  (define-field-port
    number-lock?
    #f
    #f
    (static: property:)
    System.ConsoleDriver
    NumberLock
    System.Boolean)
  (define-field-port
    title-get
    title-set!
    title-update!
    (static: property:)
    System.ConsoleDriver
    Title
    System.String)
  (define-field-port
    treat-control-cas-input?-get
    treat-control-cas-input?-set!
    treat-control-cas-input?-update!
    (static: property:)
    System.ConsoleDriver
    TreatControlCAsInput
    System.Boolean)
  (define-field-port
    window-height-get
    window-height-set!
    window-height-update!
    (static: property:)
    System.ConsoleDriver
    WindowHeight
    System.Int32)
  (define-field-port
    window-left-get
    window-left-set!
    window-left-update!
    (static: property:)
    System.ConsoleDriver
    WindowLeft
    System.Int32)
  (define-field-port
    window-top-get
    window-top-set!
    window-top-update!
    (static: property:)
    System.ConsoleDriver
    WindowTop
    System.Int32)
  (define-field-port
    window-width-get
    window-width-set!
    window-width-update!
    (static: property:)
    System.ConsoleDriver
    WindowWidth
    System.Int32)
  (define-field-port
    is-console?
    #f
    #f
    (static: property:)
    System.ConsoleDriver
    IsConsole
    System.Boolean))
