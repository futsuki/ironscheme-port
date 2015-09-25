(library (unity-engine audio audio-mixer)
  (export is?
          audio-mixer?
          find-snapshot
          set-float?
          get-float?
          transition-to-snapshots
          clear-float?
          find-matching-groups
          output-audio-mixer-group-get
          output-audio-mixer-group-set!
          output-audio-mixer-group-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.Audio.AudioMixer a))
  (define (audio-mixer? a) (clr-is UnityEngine.Audio.AudioMixer a))
  (define-method-port
    find-snapshot
    UnityEngine.Audio.AudioMixer
    FindSnapshot
    (UnityEngine.Audio.AudioMixerSnapshot System.String))
  (define-method-port
    set-float?
    UnityEngine.Audio.AudioMixer
    SetFloat
    (System.Boolean System.String System.Single))
  (define-method-port
    get-float?
    UnityEngine.Audio.AudioMixer
    GetFloat
    (System.Boolean System.String System.Single&))
  (define-method-port
    transition-to-snapshots
    UnityEngine.Audio.AudioMixer
    TransitionToSnapshots
    (System.Void
      UnityEngine.Audio.AudioMixerSnapshot[]
      System.Single[]
      System.Single))
  (define-method-port
    clear-float?
    UnityEngine.Audio.AudioMixer
    ClearFloat
    (System.Boolean System.String))
  (define-method-port
    find-matching-groups
    UnityEngine.Audio.AudioMixer
    FindMatchingGroups
    (UnityEngine.Audio.AudioMixerGroup[] System.String))
  (define-field-port
    output-audio-mixer-group-get
    output-audio-mixer-group-set!
    output-audio-mixer-group-update!
    (property:)
    UnityEngine.Audio.AudioMixer
    outputAudioMixerGroup
    UnityEngine.Audio.AudioMixerGroup))
