(library (unity-engine audio-clip)
  (export new
          is?
          audio-clip?
          set-data?
          get-data?
          create
          unload-audio-data?
          load-audio-data?
          length
          samples
          channels
          frequency
          is-ready-to-play?
          load-type
          preload-audio-data?
          load-state
          load-in-background?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AudioClip a ...)))))
  (define (is? a) (clr-is UnityEngine.AudioClip a))
  (define (audio-clip? a) (clr-is UnityEngine.AudioClip a))
  (define-method-port
    set-data?
    UnityEngine.AudioClip
    SetData
    (System.Boolean System.Single[] System.Int32))
  (define-method-port
    get-data?
    UnityEngine.AudioClip
    GetData
    (System.Boolean System.Single[] System.Int32))
  (define-method-port
    create
    UnityEngine.AudioClip
    Create
    (static:
      UnityEngine.AudioClip
      System.String
      System.Int32
      System.Int32
      System.Int32
      System.Boolean
      UnityEngine.AudioClip+PCMReaderCallback
      UnityEngine.AudioClip+PCMSetPositionCallback)
    (static:
      UnityEngine.AudioClip
      System.String
      System.Int32
      System.Int32
      System.Int32
      System.Boolean
      UnityEngine.AudioClip+PCMReaderCallback)
    (static:
      UnityEngine.AudioClip
      System.String
      System.Int32
      System.Int32
      System.Int32
      System.Boolean)
    (static:
      UnityEngine.AudioClip
      System.String
      System.Int32
      System.Int32
      System.Int32
      System.Boolean
      System.Boolean
      UnityEngine.AudioClip+PCMReaderCallback
      UnityEngine.AudioClip+PCMSetPositionCallback)
    (static:
      UnityEngine.AudioClip
      System.String
      System.Int32
      System.Int32
      System.Int32
      System.Boolean
      System.Boolean
      UnityEngine.AudioClip+PCMReaderCallback)
    (static:
      UnityEngine.AudioClip
      System.String
      System.Int32
      System.Int32
      System.Int32
      System.Boolean
      System.Boolean))
  (define-method-port
    unload-audio-data?
    UnityEngine.AudioClip
    UnloadAudioData
    (System.Boolean))
  (define-method-port
    load-audio-data?
    UnityEngine.AudioClip
    LoadAudioData
    (System.Boolean))
  (define-field-port
    length
    #f
    #f
    (property:)
    UnityEngine.AudioClip
    length
    System.Single)
  (define-field-port
    samples
    #f
    #f
    (property:)
    UnityEngine.AudioClip
    samples
    System.Int32)
  (define-field-port
    channels
    #f
    #f
    (property:)
    UnityEngine.AudioClip
    channels
    System.Int32)
  (define-field-port
    frequency
    #f
    #f
    (property:)
    UnityEngine.AudioClip
    frequency
    System.Int32)
  (define-field-port
    is-ready-to-play?
    #f
    #f
    (property:)
    UnityEngine.AudioClip
    isReadyToPlay
    System.Boolean)
  (define-field-port
    load-type
    #f
    #f
    (property:)
    UnityEngine.AudioClip
    loadType
    UnityEngine.AudioClipLoadType)
  (define-field-port
    preload-audio-data?
    #f
    #f
    (property:)
    UnityEngine.AudioClip
    preloadAudioData
    System.Boolean)
  (define-field-port
    load-state
    #f
    #f
    (property:)
    UnityEngine.AudioClip
    loadState
    UnityEngine.AudioDataLoadState)
  (define-field-port
    load-in-background?
    #f
    #f
    (property:)
    UnityEngine.AudioClip
    loadInBackground
    System.Boolean))
