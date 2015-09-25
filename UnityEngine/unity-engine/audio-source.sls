(library (unity-engine audio-source)
  (export new
          is?
          audio-source?
          play-clip-at-point
          play-scheduled
          play
          un-pause
          play-delayed
          set-scheduled-start-time
          get-output-data
          pause
          stop
          play-one-shot
          set-scheduled-end-time
          get-spectrum-data
          volume-get
          volume-set!
          volume-update!
          pitch-get
          pitch-set!
          pitch-update!
          time-get
          time-set!
          time-update!
          time-samples-get
          time-samples-set!
          time-samples-update!
          clip-get
          clip-set!
          clip-update!
          output-audio-mixer-group-get
          output-audio-mixer-group-set!
          output-audio-mixer-group-update!
          is-playing?
          loop?-get
          loop?-set!
          loop?-update!
          ignore-listener-volume?-get
          ignore-listener-volume?-set!
          ignore-listener-volume?-update!
          play-on-awake?-get
          play-on-awake?-set!
          play-on-awake?-update!
          ignore-listener-pause?-get
          ignore-listener-pause?-set!
          ignore-listener-pause?-update!
          velocity-update-mode-get
          velocity-update-mode-set!
          velocity-update-mode-update!
          pan-stereo-get
          pan-stereo-set!
          pan-stereo-update!
          spatial-blend-get
          spatial-blend-set!
          spatial-blend-update!
          reverb-zone-mix-get
          reverb-zone-mix-set!
          reverb-zone-mix-update!
          pan-level-get
          pan-level-set!
          pan-level-update!
          pan-get
          pan-set!
          pan-update!
          bypass-effects?-get
          bypass-effects?-set!
          bypass-effects?-update!
          bypass-listener-effects?-get
          bypass-listener-effects?-set!
          bypass-listener-effects?-update!
          bypass-reverb-zones?-get
          bypass-reverb-zones?-set!
          bypass-reverb-zones?-update!
          doppler-level-get
          doppler-level-set!
          doppler-level-update!
          spread-get
          spread-set!
          spread-update!
          priority-get
          priority-set!
          priority-update!
          mute?-get
          mute?-set!
          mute?-update!
          min-distance-get
          min-distance-set!
          min-distance-update!
          max-distance-get
          max-distance-set!
          max-distance-update!
          rolloff-mode-get
          rolloff-mode-set!
          rolloff-mode-update!
          min-volume-get
          min-volume-set!
          min-volume-update!
          max-volume-get
          max-volume-set!
          max-volume-update!
          rolloff-factor-get
          rolloff-factor-set!
          rolloff-factor-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AudioSource a ...)))))
  (define (is? a) (clr-is UnityEngine.AudioSource a))
  (define (audio-source? a) (clr-is UnityEngine.AudioSource a))
  (define-method-port
    play-clip-at-point
    UnityEngine.AudioSource
    PlayClipAtPoint
    (static:
      System.Void
      UnityEngine.AudioClip
      UnityEngine.Vector3
      System.Single)
    (static: System.Void UnityEngine.AudioClip UnityEngine.Vector3))
  (define-method-port
    play-scheduled
    UnityEngine.AudioSource
    PlayScheduled
    (System.Void System.Double))
  (define-method-port
    play
    UnityEngine.AudioSource
    Play
    (System.Void)
    (System.Void System.UInt64))
  (define-method-port
    un-pause
    UnityEngine.AudioSource
    UnPause
    (System.Void))
  (define-method-port
    play-delayed
    UnityEngine.AudioSource
    PlayDelayed
    (System.Void System.Single))
  (define-method-port
    set-scheduled-start-time
    UnityEngine.AudioSource
    SetScheduledStartTime
    (System.Void System.Double))
  (define-method-port
    get-output-data
    UnityEngine.AudioSource
    GetOutputData
    (System.Void System.Single[] System.Int32)
    (System.Single[] System.Int32 System.Int32))
  (define-method-port pause UnityEngine.AudioSource Pause (System.Void))
  (define-method-port stop UnityEngine.AudioSource Stop (System.Void))
  (define-method-port
    play-one-shot
    UnityEngine.AudioSource
    PlayOneShot
    (System.Void UnityEngine.AudioClip)
    (System.Void UnityEngine.AudioClip System.Single))
  (define-method-port
    set-scheduled-end-time
    UnityEngine.AudioSource
    SetScheduledEndTime
    (System.Void System.Double))
  (define-method-port
    get-spectrum-data
    UnityEngine.AudioSource
    GetSpectrumData
    (System.Void System.Single[] System.Int32 UnityEngine.FFTWindow)
    (System.Single[] System.Int32 System.Int32 UnityEngine.FFTWindow))
  (define-field-port
    volume-get
    volume-set!
    volume-update!
    (property:)
    UnityEngine.AudioSource
    volume
    System.Single)
  (define-field-port
    pitch-get
    pitch-set!
    pitch-update!
    (property:)
    UnityEngine.AudioSource
    pitch
    System.Single)
  (define-field-port
    time-get
    time-set!
    time-update!
    (property:)
    UnityEngine.AudioSource
    time
    System.Single)
  (define-field-port
    time-samples-get
    time-samples-set!
    time-samples-update!
    (property:)
    UnityEngine.AudioSource
    timeSamples
    System.Int32)
  (define-field-port
    clip-get
    clip-set!
    clip-update!
    (property:)
    UnityEngine.AudioSource
    clip
    UnityEngine.AudioClip)
  (define-field-port
    output-audio-mixer-group-get
    output-audio-mixer-group-set!
    output-audio-mixer-group-update!
    (property:)
    UnityEngine.AudioSource
    outputAudioMixerGroup
    UnityEngine.Audio.AudioMixerGroup)
  (define-field-port
    is-playing?
    #f
    #f
    (property:)
    UnityEngine.AudioSource
    isPlaying
    System.Boolean)
  (define-field-port
    loop?-get
    loop?-set!
    loop?-update!
    (property:)
    UnityEngine.AudioSource
    loop
    System.Boolean)
  (define-field-port
    ignore-listener-volume?-get
    ignore-listener-volume?-set!
    ignore-listener-volume?-update!
    (property:)
    UnityEngine.AudioSource
    ignoreListenerVolume
    System.Boolean)
  (define-field-port
    play-on-awake?-get
    play-on-awake?-set!
    play-on-awake?-update!
    (property:)
    UnityEngine.AudioSource
    playOnAwake
    System.Boolean)
  (define-field-port
    ignore-listener-pause?-get
    ignore-listener-pause?-set!
    ignore-listener-pause?-update!
    (property:)
    UnityEngine.AudioSource
    ignoreListenerPause
    System.Boolean)
  (define-field-port
    velocity-update-mode-get
    velocity-update-mode-set!
    velocity-update-mode-update!
    (property:)
    UnityEngine.AudioSource
    velocityUpdateMode
    UnityEngine.AudioVelocityUpdateMode)
  (define-field-port
    pan-stereo-get
    pan-stereo-set!
    pan-stereo-update!
    (property:)
    UnityEngine.AudioSource
    panStereo
    System.Single)
  (define-field-port
    spatial-blend-get
    spatial-blend-set!
    spatial-blend-update!
    (property:)
    UnityEngine.AudioSource
    spatialBlend
    System.Single)
  (define-field-port
    reverb-zone-mix-get
    reverb-zone-mix-set!
    reverb-zone-mix-update!
    (property:)
    UnityEngine.AudioSource
    reverbZoneMix
    System.Single)
  (define-field-port
    pan-level-get
    pan-level-set!
    pan-level-update!
    (property:)
    UnityEngine.AudioSource
    panLevel
    System.Single)
  (define-field-port
    pan-get
    pan-set!
    pan-update!
    (property:)
    UnityEngine.AudioSource
    pan
    System.Single)
  (define-field-port
    bypass-effects?-get
    bypass-effects?-set!
    bypass-effects?-update!
    (property:)
    UnityEngine.AudioSource
    bypassEffects
    System.Boolean)
  (define-field-port
    bypass-listener-effects?-get
    bypass-listener-effects?-set!
    bypass-listener-effects?-update!
    (property:)
    UnityEngine.AudioSource
    bypassListenerEffects
    System.Boolean)
  (define-field-port
    bypass-reverb-zones?-get
    bypass-reverb-zones?-set!
    bypass-reverb-zones?-update!
    (property:)
    UnityEngine.AudioSource
    bypassReverbZones
    System.Boolean)
  (define-field-port
    doppler-level-get
    doppler-level-set!
    doppler-level-update!
    (property:)
    UnityEngine.AudioSource
    dopplerLevel
    System.Single)
  (define-field-port
    spread-get
    spread-set!
    spread-update!
    (property:)
    UnityEngine.AudioSource
    spread
    System.Single)
  (define-field-port
    priority-get
    priority-set!
    priority-update!
    (property:)
    UnityEngine.AudioSource
    priority
    System.Int32)
  (define-field-port
    mute?-get
    mute?-set!
    mute?-update!
    (property:)
    UnityEngine.AudioSource
    mute
    System.Boolean)
  (define-field-port
    min-distance-get
    min-distance-set!
    min-distance-update!
    (property:)
    UnityEngine.AudioSource
    minDistance
    System.Single)
  (define-field-port
    max-distance-get
    max-distance-set!
    max-distance-update!
    (property:)
    UnityEngine.AudioSource
    maxDistance
    System.Single)
  (define-field-port
    rolloff-mode-get
    rolloff-mode-set!
    rolloff-mode-update!
    (property:)
    UnityEngine.AudioSource
    rolloffMode
    UnityEngine.AudioRolloffMode)
  (define-field-port
    min-volume-get
    min-volume-set!
    min-volume-update!
    (property:)
    UnityEngine.AudioSource
    minVolume
    System.Single)
  (define-field-port
    max-volume-get
    max-volume-set!
    max-volume-update!
    (property:)
    UnityEngine.AudioSource
    maxVolume
    System.Single)
  (define-field-port
    rolloff-factor-get
    rolloff-factor-set!
    rolloff-factor-update!
    (property:)
    UnityEngine.AudioSource
    rolloffFactor
    System.Single))
