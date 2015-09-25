(library (unity-engine-internal gidebug-visualisation)
  (export new
          is?
          gidebug-visualisation?
          cycle-skip-instances
          stop-cycle-mode
          play-cycle-mode
          cycle-skip-systems
          reset-runtime-input-textures
          pause-cycle-mode
          cycle-mode?
          pause-cycle-mode?
          tex-type-get
          tex-type-set!
          tex-type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngineInternal.GIDebugVisualisation a ...)))))
  (define (is? a) (clr-is UnityEngineInternal.GIDebugVisualisation a))
  (define (gidebug-visualisation? a)
    (clr-is UnityEngineInternal.GIDebugVisualisation a))
  (define-method-port
    cycle-skip-instances
    UnityEngineInternal.GIDebugVisualisation
    CycleSkipInstances
    (static: System.Void System.Int32))
  (define-method-port
    stop-cycle-mode
    UnityEngineInternal.GIDebugVisualisation
    StopCycleMode
    (static: System.Void))
  (define-method-port
    play-cycle-mode
    UnityEngineInternal.GIDebugVisualisation
    PlayCycleMode
    (static: System.Void))
  (define-method-port
    cycle-skip-systems
    UnityEngineInternal.GIDebugVisualisation
    CycleSkipSystems
    (static: System.Void System.Int32))
  (define-method-port
    reset-runtime-input-textures
    UnityEngineInternal.GIDebugVisualisation
    ResetRuntimeInputTextures
    (static: System.Void))
  (define-method-port
    pause-cycle-mode
    UnityEngineInternal.GIDebugVisualisation
    PauseCycleMode
    (static: System.Void))
  (define-field-port
    cycle-mode?
    #f
    #f
    (static: property:)
    UnityEngineInternal.GIDebugVisualisation
    cycleMode
    System.Boolean)
  (define-field-port
    pause-cycle-mode?
    #f
    #f
    (static: property:)
    UnityEngineInternal.GIDebugVisualisation
    pauseCycleMode
    System.Boolean)
  (define-field-port
    tex-type-get
    tex-type-set!
    tex-type-update!
    (static: property:)
    UnityEngineInternal.GIDebugVisualisation
    texType
    UnityEngineInternal.GITextureType))
