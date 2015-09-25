(library (unity-engine input)
  (export new
          is?
          input?
          get-touch
          get-key-up?
          get-button-up?
          get-button?
          get-axis
          get-acceleration-event
          get-position
          get-button-down?
          is-joystick-preconfigured?
          get-mouse-button-down?
          get-axis-raw
          get-key-down?
          get-joystick-names
          get-mouse-button?
          get-mouse-button-up?
          reset-input-axes
          get-key?
          get-rotation
          compensate-sensors?-get
          compensate-sensors?-set!
          compensate-sensors?-update!
          is-gyro-available?
          gyro
          mouse-position
          mouse-scroll-delta
          mouse-present?
          simulate-mouse-with-touches?-get
          simulate-mouse-with-touches?-set!
          simulate-mouse-with-touches?-update!
          any-key?
          any-key-down?
          input-string
          acceleration
          acceleration-events
          acceleration-event-count
          touches
          touch-count
          eat-key-press-on-text-field-focus?-get
          eat-key-press-on-text-field-focus?-set!
          eat-key-press-on-text-field-focus?-update!
          touch-supported?
          multi-touch-enabled?-get
          multi-touch-enabled?-set!
          multi-touch-enabled?-update!
          location
          compass
          device-orientation
          ime-composition-mode-get
          ime-composition-mode-set!
          ime-composition-mode-update!
          composition-string
          ime-is-selected?
          composition-cursor-pos-get
          composition-cursor-pos-set!
          composition-cursor-pos-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Input a ...)))))
  (define (is? a) (clr-is UnityEngine.Input a))
  (define (input? a) (clr-is UnityEngine.Input a))
  (define-method-port
    get-touch
    UnityEngine.Input
    GetTouch
    (static: UnityEngine.Touch System.Int32))
  (define-method-port
    get-key-up?
    UnityEngine.Input
    GetKeyUp
    (static: System.Boolean UnityEngine.KeyCode)
    (static: System.Boolean System.String))
  (define-method-port
    get-button-up?
    UnityEngine.Input
    GetButtonUp
    (static: System.Boolean System.String))
  (define-method-port
    get-button?
    UnityEngine.Input
    GetButton
    (static: System.Boolean System.String))
  (define-method-port
    get-axis
    UnityEngine.Input
    GetAxis
    (static: System.Single System.String))
  (define-method-port
    get-acceleration-event
    UnityEngine.Input
    GetAccelerationEvent
    (static: UnityEngine.AccelerationEvent System.Int32))
  (define-method-port
    get-position
    UnityEngine.Input
    GetPosition
    (static: UnityEngine.Vector3 System.Int32))
  (define-method-port
    get-button-down?
    UnityEngine.Input
    GetButtonDown
    (static: System.Boolean System.String))
  (define-method-port
    is-joystick-preconfigured?
    UnityEngine.Input
    IsJoystickPreconfigured
    (static: System.Boolean System.String))
  (define-method-port
    get-mouse-button-down?
    UnityEngine.Input
    GetMouseButtonDown
    (static: System.Boolean System.Int32))
  (define-method-port
    get-axis-raw
    UnityEngine.Input
    GetAxisRaw
    (static: System.Single System.String))
  (define-method-port
    get-key-down?
    UnityEngine.Input
    GetKeyDown
    (static: System.Boolean UnityEngine.KeyCode)
    (static: System.Boolean System.String))
  (define-method-port
    get-joystick-names
    UnityEngine.Input
    GetJoystickNames
    (static: System.String[]))
  (define-method-port
    get-mouse-button?
    UnityEngine.Input
    GetMouseButton
    (static: System.Boolean System.Int32))
  (define-method-port
    get-mouse-button-up?
    UnityEngine.Input
    GetMouseButtonUp
    (static: System.Boolean System.Int32))
  (define-method-port
    reset-input-axes
    UnityEngine.Input
    ResetInputAxes
    (static: System.Void))
  (define-method-port
    get-key?
    UnityEngine.Input
    GetKey
    (static: System.Boolean UnityEngine.KeyCode)
    (static: System.Boolean System.String))
  (define-method-port
    get-rotation
    UnityEngine.Input
    GetRotation
    (static: UnityEngine.Quaternion System.Int32))
  (define-field-port
    compensate-sensors?-get
    compensate-sensors?-set!
    compensate-sensors?-update!
    (static: property:)
    UnityEngine.Input
    compensateSensors
    System.Boolean)
  (define-field-port
    is-gyro-available?
    #f
    #f
    (static: property:)
    UnityEngine.Input
    isGyroAvailable
    System.Boolean)
  (define-field-port
    gyro
    #f
    #f
    (static: property:)
    UnityEngine.Input
    gyro
    UnityEngine.Gyroscope)
  (define-field-port
    mouse-position
    #f
    #f
    (static: property:)
    UnityEngine.Input
    mousePosition
    UnityEngine.Vector3)
  (define-field-port
    mouse-scroll-delta
    #f
    #f
    (static: property:)
    UnityEngine.Input
    mouseScrollDelta
    UnityEngine.Vector2)
  (define-field-port
    mouse-present?
    #f
    #f
    (static: property:)
    UnityEngine.Input
    mousePresent
    System.Boolean)
  (define-field-port
    simulate-mouse-with-touches?-get
    simulate-mouse-with-touches?-set!
    simulate-mouse-with-touches?-update!
    (static: property:)
    UnityEngine.Input
    simulateMouseWithTouches
    System.Boolean)
  (define-field-port
    any-key?
    #f
    #f
    (static: property:)
    UnityEngine.Input
    anyKey
    System.Boolean)
  (define-field-port
    any-key-down?
    #f
    #f
    (static: property:)
    UnityEngine.Input
    anyKeyDown
    System.Boolean)
  (define-field-port
    input-string
    #f
    #f
    (static: property:)
    UnityEngine.Input
    inputString
    System.String)
  (define-field-port
    acceleration
    #f
    #f
    (static: property:)
    UnityEngine.Input
    acceleration
    UnityEngine.Vector3)
  (define-field-port
    acceleration-events
    #f
    #f
    (static: property:)
    UnityEngine.Input
    accelerationEvents
    UnityEngine.AccelerationEvent[])
  (define-field-port
    acceleration-event-count
    #f
    #f
    (static: property:)
    UnityEngine.Input
    accelerationEventCount
    System.Int32)
  (define-field-port
    touches
    #f
    #f
    (static: property:)
    UnityEngine.Input
    touches
    UnityEngine.Touch[])
  (define-field-port
    touch-count
    #f
    #f
    (static: property:)
    UnityEngine.Input
    touchCount
    System.Int32)
  (define-field-port
    eat-key-press-on-text-field-focus?-get
    eat-key-press-on-text-field-focus?-set!
    eat-key-press-on-text-field-focus?-update!
    (static: property:)
    UnityEngine.Input
    eatKeyPressOnTextFieldFocus
    System.Boolean)
  (define-field-port
    touch-supported?
    #f
    #f
    (static: property:)
    UnityEngine.Input
    touchSupported
    System.Boolean)
  (define-field-port
    multi-touch-enabled?-get
    multi-touch-enabled?-set!
    multi-touch-enabled?-update!
    (static: property:)
    UnityEngine.Input
    multiTouchEnabled
    System.Boolean)
  (define-field-port
    location
    #f
    #f
    (static: property:)
    UnityEngine.Input
    location
    UnityEngine.LocationService)
  (define-field-port
    compass
    #f
    #f
    (static: property:)
    UnityEngine.Input
    compass
    UnityEngine.Compass)
  (define-field-port
    device-orientation
    #f
    #f
    (static: property:)
    UnityEngine.Input
    deviceOrientation
    UnityEngine.DeviceOrientation)
  (define-field-port
    ime-composition-mode-get
    ime-composition-mode-set!
    ime-composition-mode-update!
    (static: property:)
    UnityEngine.Input
    imeCompositionMode
    UnityEngine.IMECompositionMode)
  (define-field-port
    composition-string
    #f
    #f
    (static: property:)
    UnityEngine.Input
    compositionString
    System.String)
  (define-field-port
    ime-is-selected?
    #f
    #f
    (static: property:)
    UnityEngine.Input
    imeIsSelected
    System.Boolean)
  (define-field-port
    composition-cursor-pos-get
    composition-cursor-pos-set!
    composition-cursor-pos-update!
    (static: property:)
    UnityEngine.Input
    compositionCursorPos
    UnityEngine.Vector2))
