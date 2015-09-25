(library (unity-engine display)
  (export is?
          display?
          multi-display-license?
          relative-mouse-at
          set-rendering-resolution
          activate
          set-params
          displays-get
          displays-set!
          displays-update!
          rendering-width
          rendering-height
          system-width
          system-height
          color-buffer
          depth-buffer
          main)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.Display a))
  (define (display? a) (clr-is UnityEngine.Display a))
  (define-method-port
    multi-display-license?
    UnityEngine.Display
    MultiDisplayLicense
    (static: System.Boolean))
  (define-method-port
    relative-mouse-at
    UnityEngine.Display
    RelativeMouseAt
    (static: UnityEngine.Vector3 UnityEngine.Vector3))
  (define-method-port
    set-rendering-resolution
    UnityEngine.Display
    SetRenderingResolution
    (System.Void System.Int32 System.Int32))
  (define-method-port
    activate
    UnityEngine.Display
    Activate
    (System.Void System.Int32 System.Int32 System.Int32)
    (System.Void))
  (define-method-port
    set-params
    UnityEngine.Display
    SetParams
    (System.Void System.Int32 System.Int32 System.Int32 System.Int32))
  (define-field-port
    displays-get
    displays-set!
    displays-update!
    (static:)
    UnityEngine.Display
    displays
    UnityEngine.Display[])
  (define-field-port
    rendering-width
    #f
    #f
    (property:)
    UnityEngine.Display
    renderingWidth
    System.Int32)
  (define-field-port
    rendering-height
    #f
    #f
    (property:)
    UnityEngine.Display
    renderingHeight
    System.Int32)
  (define-field-port
    system-width
    #f
    #f
    (property:)
    UnityEngine.Display
    systemWidth
    System.Int32)
  (define-field-port
    system-height
    #f
    #f
    (property:)
    UnityEngine.Display
    systemHeight
    System.Int32)
  (define-field-port
    color-buffer
    #f
    #f
    (property:)
    UnityEngine.Display
    colorBuffer
    UnityEngine.RenderBuffer)
  (define-field-port
    depth-buffer
    #f
    #f
    (property:)
    UnityEngine.Display
    depthBuffer
    UnityEngine.RenderBuffer)
  (define-field-port
    main
    #f
    #f
    (static: property:)
    UnityEngine.Display
    main
    UnityEngine.Display))
